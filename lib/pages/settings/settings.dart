import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/settings/account_form.dart';
import 'package:mathrix_education_app/pages/settings/password_form.dart';
import 'package:mathrix_education_app/pages/settings/premium_info.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _passwordFormKey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> _accountFormKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Paramètres',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountForm(formKeyAccount: _accountFormKey),
            SizedBox(height: 16),
            PasswordForm(passwordKeyAccount: _passwordFormKey),
            MaterialButton(
              minWidth: double.infinity,
              color: Colors.yellow,
              disabledColor: Colors.grey,
              onPressed: () {
                _validate(Provider.of<AppState>(context, listen: false));
              },
              child: Text('Enregistrer les changements'),
            ),
            PremiumInfo(),
          ],
        ),
      ),
    );
  }

  _validate(AppState appState) async {
    var accountForm = _accountFormKey.currentState;
    var passwordForm = _passwordFormKey.currentState;
    accountForm.save();
    passwordForm.save();
    UpdateMeArguments updateMeArguments = UpdateMeArguments(input: UpdateMe$UpdateMe());

    if (accountForm.validate()) {
      updateMeArguments.input.email = accountForm.value['email'];
      updateMeArguments.input.password = accountForm.value['password'];
    }

    if (passwordForm.validate()) {}
    updateMeArguments.input.password = accountForm.value['password'];
    appState.updateUser(updateMeArguments);
  }
}
