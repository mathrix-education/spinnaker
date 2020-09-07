import 'package:flutter/material.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/dashboard/update_grade_dialog.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_icon.dart';
import 'package:provider/provider.dart';

class SettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppState appState = Provider.of<AppState>(context, listen: false);
    appState.loadGrades();
    final style = Theme.of(context).textTheme.headline2.apply(color: Colors.white);
    return Dialog(
      backgroundColor: green.withOpacity(0.83),
      insetPadding: EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            right: 16,
            child: MtxIcon(
              icon: 'close',
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
          SizedBox.expand(
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
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed('/settings');
                  },
                ),
                const SizedBox(height: 16),
                Consumer<AppState>(
                  builder: (context, appState, child) {
                    return GestureDetector(
                      child: Text('Déconnexion', style: style),
                      onTap: () => appState
                          .logout()
                          .then((_) => Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false)),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
