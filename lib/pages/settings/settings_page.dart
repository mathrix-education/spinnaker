import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/core/misc/vibration.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/settings/account_form.dart';
import 'package:mathrix_education_app/pages/settings/password_form.dart';
import 'package:mathrix_education_app/pages/settings/premium_info.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  /// The account form key.
  final GlobalKey<FormBuilderState> _accountFormKey = GlobalKey<FormBuilderState>();

  /// The password form key.
  final GlobalKey<FormBuilderState> _passwordFormKey = GlobalKey<FormBuilderState>();

  bool canSave = false;

  @override
  Widget build(BuildContext context) {
    final AppState appState = Provider.of<AppState>(context, listen: false);
    return StandardPage(
      title: 'Paramètres',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountForm(
              formKeyAccount: _accountFormKey,
              onFormUpdate: () => setState(() {
                updateSaveStatus(appState);
              }),
            ),
            SizedBox(height: 16),
            PasswordForm(
              passwordKeyAccount: _passwordFormKey,
              onFormUpdate: () => setState(() {
                updateSaveStatus(appState);
              }),
            ),
            SizedBox(height: 16),
            PrimaryTextButton(
              width: double.infinity,
              onPressed: () => _validate(Provider.of<AppState>(context, listen: false)),
              enabled: canSave,
              text: 'Enregistrer les changements',
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

    UpdateMeArguments updateMeArguments = UpdateMeArguments(input: UpdateMe$UpdateMe());

    updateMeArguments.input.password = passwordForm.value['password'];

    if (accountForm.value['email'] != appState.user.email) {
      updateMeArguments.input.email = accountForm.value['email'];
    }

    if (accountForm.value['username'] != appState.user.username) {
      updateMeArguments.input.username = accountForm.value['username'];
    }
    appState.updateUser(updateMeArguments).then((value) {
      if (value) {
        Flushbar(
          message: 'Ton profil a été mis à jour!',
          duration: Duration(seconds: 4),
        ).show(context);
      }
      hapticSuccessFeedback();
      updateSaveStatus(appState);
    });
  }

  /// Update the save status.
  updateSaveStatus(AppState appState) {
    var accountForm = _accountFormKey.currentState;
    var passwordForm = _passwordFormKey.currentState;

    Me$BasicUserMixin user = appState.user;

    setState(() {
      // The confirmPassword is critical, for display issue, password form is considered as valid if confirmPassword is empty
      // Thus, the validity of the password form has to be recalculated.
      canSave = (passwordForm.validate() && passwordForm.value['confirmPassword'] != '') ||
          accountForm.validate() &&
              (accountForm.value['email'] != user.email || accountForm.value['username'] != user.username);
    });
  }
}
