import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/texts/Headline_3.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class ContainerBrick extends StatelessWidget {
  final Map<String, dynamic> brick;

  const ContainerBrick({this.brick});

  @override
  Widget build(BuildContext context) {
    String prefix = brick['prefix'];
    String suffix = brick['suffix'];
    String variant = brick['variant'];
    String title = variantTitleMap[variant];

    Color color = variantColorMap[variant] ?? green;

    return Container(
      decoration: BoxDecoration(border: Border(left: BorderSide(width: 2, color: color))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headline3(text: '$prefix $title $suffix', color: color),
          Container(padding: EdgeInsets.only(left: 8), child: SilicateWrapper(wall: brick['wall'])),
        ],
      ),
    );
  }

  static Map<String, String> variantTitleMap = {
    'corollary': 'Corollaire',
    'definition': 'Définition',
    'example': 'Exemple',
    'demonstration': 'Démonstration',
    'lemma': 'Lemme',
    'introduction': 'Introduction',
    'property': 'Propriété',
    'proposition': 'Proposition',
    'law': 'Loi',
    'remark': 'Remarque',
    'theorem': 'Théorème',
    'step': 'Étape',
    'reciprocal': 'Réciproque',
    'problematic': 'Problématique',
    'conclusion': 'Conclusion',
  };

  static Map<String, Color> variantColorMap = {
    'definition': blue,
    'theorem': orange,
  };
}
