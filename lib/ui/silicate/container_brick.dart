import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:mathrix_education_app/ui/silicate/silicate_wrapper.dart';
import 'package:mathrix_education_app/ui/texts/Headline_3.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

TeXViewWidget containerBrick(Map<String, dynamic> brick) {
  String prefix = brick['prefix'];
  String suffix = brick['suffix'];
  String variant = brick['variant'];
  String title = variantTitleMap[variant];

  Color color = variantColorMap[variant] ?? green;

  return TeXViewContainer(
    style: TeXViewStyle(border: TeXViewBorder.only(left: TeXViewBorderDecoration(borderWidth: 2, borderColor: color))),
    child: TeXViewColumn(
      children: [
        TeXViewDocument(
          '$prefix $title $suffix',
          style: TeXViewStyle(contentColor: color, fontStyle: TeXViewFontStyle(fontSize: 18)), // TODO
        ),
        // Container(padding: EdgeInsets.only(left: 8), child: SilicateWrapper(wall: brick['wall'])),
      ],
    ),
  );
}

Map<String, String> variantTitleMap = {
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

Map<String, Color> variantColorMap = {
  'definition': blue,
  'theorem': orange,
};
