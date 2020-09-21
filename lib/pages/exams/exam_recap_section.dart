import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/outline_text_button.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/texts/bullet_list_item.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_card.dart';

class ExamRecapSection extends StatelessWidget {
  final VoidCallback onCorrection;
  final VoidCallback onRestart;

  const ExamRecapSection({this.onCorrection, this.onRestart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        MtxCard(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Headline4(text: 'Bravo, tu as réussi cette interro!'),
                Text('24/28', style: TextStyle(fontSize: 48, color: green, fontFamily: 'Poppins')),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Body(text: 'N\'oublie pas:'),
            _listBuilder('Tu t\'es toi-même noté et il se peut que tu aies été plus ou moins sévère dans ta notation.'),
            _listBuilder('L’essentiel est de comprendre la correction et la source de tes erreurs !'),
            _listBuilder('Quand tu auras identifié la ou les sources d’erreurs, reprends les cours '
                'ou exercices qui te permettront de consolider ces notions.'),
            _listBuilder('Entraine-toî ensuite à nouveau sur ces notions pour bien tester tes '
                'connaissances avant le contrôle final.'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineTextButton(
              text: 'Revoir la correction',
              width: 150,
              onPressed: onCorrection,
            ),
            SizedBox(width: 8),
            PrimaryTextButton(
              text: 'Recommencer',
              width: 150,
              onPressed: onRestart,
            )
          ],
        )
      ]),
    );
  }

  _listBuilder(String text) {
    return Padding(padding: EdgeInsets.only(bottom: 8), child: BulletListItem(item: Body(text: text)));
  }
}
