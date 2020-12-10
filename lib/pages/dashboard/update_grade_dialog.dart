import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:provider/provider.dart';

class ChangeGradeDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (consumerContext, appState, child) {
      print(appState.listGrades);
      return SimpleDialog(
        title: const Headline4(text: 'Changer de classe', color: green),
        children: appState.listGrades.where((element) => element.id != appState.user?.grade?.id).map((e) {
          return SimpleDialogOption(
            onPressed: () =>
                appState.updateUser(UpdateMeArguments(input: UpdateMe$UpdateMe(grade_id: e.id))).then((updated) {
              if (updated) {
                String gradeName = e.name;
                Navigator.of(context).pop();
                Flushbar(
                  message: 'Ta classe a été mise à jour ($gradeName)',
                  duration: Duration(seconds: 4),
                ).show(context);
              }
            }),
            child: Text(
              e.name,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          );
        }).toList(),
      );
    });
}
}
