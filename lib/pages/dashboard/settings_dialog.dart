import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/dashboard/update_grade_dialog.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_icon.dart';
import 'package:provider/provider.dart';

class SettingsDialog extends StatelessWidget {
  void logout(BuildContext context) {
    final AppState appState = Provider.of<AppState>(context, listen: false);
    appState.loadGrades();
    appState.logout().then((_) => Navigator.of(context).pushNamedAndRemoveUntil(RoutePaths.authenticate, (_) => false));
  }

  void editGrade(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => ChangeGradeDialog(),
    );
  }

  void openSettings(BuildContext context) {
    Navigator.pop(context);
    Navigator.of(context).pushNamed(RoutePaths.settings);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Wrap(
        children: <Widget>[
          new ListTile(
              leading: const Icon(Icons.account_balance),
              title: const Body(text: 'Changer de classe'),
              onTap: () {
                Navigator.of(context).pop();
                editGrade(context);
              }),
          new ListTile(
              leading: const Icon(Icons.settings),
              title: const Body(text: 'Paramètres'),
              onTap: () {
                openSettings(context);
              }),
          new ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Body(text: 'Déconnexion'),
              onTap: () {
                Navigator.of(context).pop();
                logout(context);
              }),
        ],
      ),
    );
  }
}
