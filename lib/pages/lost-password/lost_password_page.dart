// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
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

  @override
  void initState() {
    super.initState();
  }

  _validate() {
    print('a');
    print(formKey.currentState);
    print(formKey.currentState.value['email']);



    print(formIsValid);
    if (formIsValid) {
    } else {
    }
  }

  _checkValidation() {
    setState(() {
      formIsValid = formKey.currentState.saveAndValidate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Mot de passe perdu',
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Body(text: 'Ecris ton email, tu reçevras un email de réinitialisation'),
            FormBuilder(
              key: formKey,
              autovalidate: true,
              child: Column(
                children: [
                  SizedBox(
                    height: 85,
                    child: MtxTextFormField(
                      label: "Email",
                      attribute: 'email',
                      obscureText: false,
                      textInputType: TextInputType.visiblePassword,
                      validators: emailValidators,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => _validate(),
                      onTextChange: (_) => _checkValidation(),
                    ),
                  ),
                  PrimaryTextButton(
                    text: 'Envoyer',
                    onPressed: () => _validate(),
                    width: double.infinity,
                    enabled: formIsValid,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
