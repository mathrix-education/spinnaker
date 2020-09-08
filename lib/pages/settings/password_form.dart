import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';

class PasswordForm extends StatelessWidget {
  /// The form key.
  final GlobalKey<FormBuilderState> passwordKeyAccount;

  /// Callback when the form is updated.
  final Function onFormUpdate;

  const PasswordForm({this.passwordKeyAccount, this.onFormUpdate});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: passwordKeyAccount,
      initialValue: {'password': '', 'confirmPassword': ''},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleGreen(text: 'Changer de mot de passe'),
          const SizedBox(height: 16),
          MtxTextFormField(
            label: 'Mot de passe',
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            attribute: 'password',
            onTextChange: (text) => _validate(),
            validators: passwordValidators,
          ),
          const SizedBox(height: 20),
          MtxTextFormField(
            label: 'Mot de passe',
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            onTextChange: (text) => _validate(),
            attribute: 'confirmPassword',
            validators: [
              (val) {
                var form = passwordKeyAccount.currentState;
                if (form.value['password'] != val && form.value['password'].length >= 6 && val != '') {
                  return "Les mots de passes ne correspondent pas";
                }
                return null;
              },
            ],
          ),
        ],
      ),
    );
  }

  _validate() {
    passwordKeyAccount.currentState.saveAndValidate();
    onFormUpdate();
  }
}
