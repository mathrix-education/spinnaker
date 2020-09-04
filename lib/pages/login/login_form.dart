import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/pages/login/login_state.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';
import '../../main.dart';

class LoginForm extends StatelessWidget {
  /// The global formBuilder key.
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final LoginMode loginMode;
  final void Function() onForgotPasswordTap;
  final void Function(String token) onLogin;
  final _client = graphQLConfiguration.graphQLClient();

  LoginForm({
    this.loginMode,
    this.onForgotPasswordTap,
    this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return FormBuilder(
      key: formKey,
      initialValue: {'email': '', 'password': ''},
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Add TextFormFields and RaisedButton here.
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: MtxTextFormField(
                label: "Email",
                attribute: 'email',
                textInputType: TextInputType.emailAddress,
                validators: emailValidators,
                onTextChange: (s) => validateForm(),
              ),
            ),
            MtxTextFormField(
              label: "Mot de passe",
              attribute: 'password',
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
              validators: passwordValidators,
              onTextChange: (s) => validateForm(),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: GestureDetector(
                onTap: () => onForgotPasswordTap(),
                child: Text(
                  loginMode == LoginMode.Login ? 'Mot de passe oublié?' : '',
                  style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: green),
                ),
              ),
            ),
            PrimaryTextButton(text: 'Se connecter', onPressed: () => _authenticate(context)),
          ],
        ),
      ),
    );
  }

  void validateForm() {
    this.formKey.currentState.validate();
  }

  _authenticate(BuildContext context) async {
    var form = formKey.currentState;
    form.save();
    if (form.validate()) {
      Map<String, dynamic> value = form.value;

      MutationOptions options = MutationOptions(
        documentNode: LoginMutation().document,
        variables: LoginArguments(email: value['email'], password: value['password']).toJson(),
      );
      final QueryResult result = await _client.mutate(options);

      if (result.hasException) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Combinaison invalide')));
      } else {
        Login$Mutation login$mutation = Login$Mutation.fromJson(result.data);
        onLogin(login$mutation.loginBasic.token);
      }
    }
  }
}
