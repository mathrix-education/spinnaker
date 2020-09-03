// Define a custom Form widget.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';

class LoginForm extends StatelessWidget {
  /// The global formBuilder key.
  final GlobalKey<FormBuilderState> formKey;

  LoginForm({this.formKey});

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return FormBuilder(
      key: formKey,
      initialValue: {'email': '', 'password': ''},
      child: Center(
        child: Column(
          children: [
            // Add TextFormFields and RaisedButton here.
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: MtxTextFormField(
                label: "Email",
                attribute: 'email',
                textInputType: TextInputType.emailAddress,
                validators: emailValidators,
              ),
            ),
            MtxTextFormField(
              label: "Mot de passe",
              attribute: 'password',
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
              validators: passwordValidators,
            ),
          ],
        ),
      ),
    );
  }
}
