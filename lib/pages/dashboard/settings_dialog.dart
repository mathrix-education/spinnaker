import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/dashboard/update_grade_dialog.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:provider/provider.dart';

class SettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<AppState>(context, listen: false).loadGrades();
    final style = Theme.of(context).textTheme.headline2.apply(color: Colors.white);
    return Dialog(
      backgroundColor: green.withOpacity(0.83),
      insetPadding: EdgeInsets.all(0),
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text('Changer de classe', style: style),
              onTap: () => showDialog(
                context: context,
                builder: (_) => ChangeGradeDialog(),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              child: Text('Paramètres', style: style),
              onTap: () => Navigator.of(context).pushNamed('/settings'),
            ),
            const SizedBox(height: 16),
            Text('Déconnexion', style: style),
          ],
        ),
      ),
    );
  }
}
