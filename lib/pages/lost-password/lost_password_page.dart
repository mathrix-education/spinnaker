// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/buttons/progress_button.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';

class LostPasswordPage extends StatefulWidget {
  @override
  _LostPasswordState createState() => _LostPasswordState();
}

class _LostPasswordState extends State<LostPasswordPage> {
  final formKey = GlobalKey<FormBuilderState>();

  var formIsValid = false;

  var status = ButtonState.normal;
  bool isStep2 = false; // step 1 or 2

  /// The graphql client.
  final _client = GraphQLConfiguration.client;

  @override
  void initState() {
    super.initState();
  }

  _validate() {
    _sendXhr(context);
    if (formIsValid) {
    } else {}
  }

  _sendXhr(BuildContext context) async {
    var form = formKey.currentState;
    form.save();

    setState(() {
      status = ButtonState.inProgress;
    });

    if (form.validate()) {
      MutationOptions options = MutationOptions(
        documentNode: ForgotPasswordMutation().document,
        variables: ForgotPasswordArguments(email: 'jean@g.co').toJson(),
      );
      final QueryResult result = await _client.mutate(options);

      if (result.hasException) {
        setState(() {
          status = ButtonState.error;
        });

        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Combinaison invalide')));
      } else {
        setState(() {
          status = ButtonState.success;
          isStep2 = true;
        });
        ForgotPassword$Mutation forgotPassword$Mutation = ForgotPassword$Mutation.fromJson(result.data);
      }
    }
  }

  _checkValidation() {
    setState(() {
      formIsValid = formKey.currentState.saveAndValidate();
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget step1 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Body(
          text: 'Ecris ton email, tu recevras un email de réinitialisation',
          textAlign: TextAlign.center,
        ),
        FormBuilder(
          key: formKey,
          autovalidate: true,
          child: Column(
            children: [
              SizedBox(
                height: 85,
                child: MtxTextFormField(
                  label: 'Email',
                  attribute: 'email',
                  obscureText: false,
                  textInputType: TextInputType.visiblePassword,
                  validators: emailValidators,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => _validate(),
                  onTextChange: (_) => _checkValidation(),
                ),
              ),

              ProgressButton(
                text: 'Envoyer',
                onPressed: () {
                  _validate();
                },
                buttonState: status,
                enabled: formIsValid,
              ),
            ],
          ),
        )
      ],
    );

    Widget step2 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Body(
          text: 'Un email a été envoyé.'
        ),
        PrimaryTextButton(
          text: 'Revenir à la page de connexion',
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );

    return StandardPage(
      title: 'Mot de passe perdu',
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
        child: isStep2 ? step2 : step1,
      ),
    );
  }
}
