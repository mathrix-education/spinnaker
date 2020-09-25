import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/pages/login/login_state.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/buttons/progress_button.dart';
import 'package:mathrix_education_app/ui/texts/underlined.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';

class LoginForm extends StatefulWidget {
  final LoginMode loginMode;
  final GestureTapCallback onForgotPasswordTap;
  final void Function(String token) onLogin;

  LoginForm({
    this.loginMode,
    this.onForgotPasswordTap,
    this.onLogin,
  });

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool formValid = false;

  FocusNode passwordFocusNode;

  ButtonState xhrStatus = ButtonState.normal;

  /// The global formBuilder key.
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  /// The graphql client.
  final _client = GraphQLConfiguration.client;

  // see https://flutter.dev/docs/cookbook/forms/focus
  @override
  void initState() {
    super.initState();
    // formKey.currentState.reset();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    passwordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return FormBuilder(
      key: formKey,
      child: Center(
        child: Column(
          children: [
            // Add TextFormFields and RaisedButton here.
            MtxTextFormField(
              label: 'Email',
              attribute: 'email',
              textInputType: TextInputType.emailAddress,
              validators: emailValidators,
              onTextChange: (s) => validateForm(),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) => passwordFocusNode.requestFocus(),
            ),
            MtxTextFormField(
              label: 'Mot de passe',
              attribute: 'password',
              obscureText: true,
              textInputType: TextInputType.text,
              validators: passwordValidators, // TODO validator not working
              onTextChange: (s) => validateForm(),
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (s) => _authenticate(context),
              focusNode: passwordFocusNode,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 16),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => widget.onForgotPasswordTap(),
                child: Underlined(
                  text: widget.loginMode == LoginMode.Login ? 'Mot de passe oublié?' : '',
                ),
              ),
            ),
            SizedBox(height: 20),
            ProgressButton(
              text: 'Se connecter',
              onPressed: () => _authenticate(context),
              buttonState: xhrStatus,
              enabled: formValid,
            ),
          ],
        ),
      ),
    );
  }

  void validateForm() {
    setState(() {
      formValid = formKey.currentState.saveAndValidate();
    });
  }

  _authenticate(BuildContext context) async {
    var form = formKey.currentState;
    form.save();
    if (form.validate()) {
      setState(() {

      xhrStatus = ButtonState.inProgress;
      });
      Map<String, dynamic> value = form.value;

      MutationOptions options = MutationOptions(
        documentNode: LoginMutation().document,
        variables: LoginArguments(email: value['email'], password: value['password']).toJson(),
      );
      final QueryResult result = await _client.mutate(options);

      if (result.hasException) {
        setState(() {
        xhrStatus = ButtonState.error;
        });
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Combinaison invalide')));
      } else {
        setState(() {
        xhrStatus = ButtonState.success;
        });
        Login$Mutation login$mutation = Login$Mutation.fromJson(result.data);
        widget.onLogin(login$mutation.loginBasic.token);

      }
        setState(() {
          xhrStatus = ButtonState.normal;
        });
    }
  }
}
