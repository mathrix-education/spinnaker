// Define a custom Form widget.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/ui/layouts/wigets/form_field.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget and allows form validation.
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return FormBuilder(
      key: _fbKey,
      initialValue: {'email': '', 'password': ''},
      autovalidate: true,
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
                validators: [
                  FormBuilderValidators.email(),
                  FormBuilderValidators.required()
                ],
              ),
            ),
            MtxTextFormField(
              label: "Mot de passe",
              attribute: 'password',
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
              validators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(6)
              ],
            ),
            RaisedButton(
              onPressed: () => _validate(),
              child: Text('Connexion'),
            ),
          ],
        ),
      ),
    );
  }

  _validate() {
    var form = _fbKey.currentState;
    print(form.validate());
    print(form.initialValue);
    print(form.value);
    if (form.validate()) {
      print('CKFKF');
    }
  }
}
