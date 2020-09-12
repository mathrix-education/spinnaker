import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/texts/headline_1.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_icon.dart';

class PremiumDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(width: 35), // Trick to center the text with an
              Expanded(
                // Invisible box
                child: Headline1(
                  text: 'Tu dois activer le mode machine!',
                  color: green,
                  textAlign: TextAlign.center,
                ),
              ),
              MtxIcon(
                icon: 'close',
                height: 35,
                onTap: () => Navigator.of(context).pop(),
              ),
            ]),
            Column(
              children: [
                Headline4(
                    text: 'Accès illimité aux cours, exercices et flashcards!',
                    color: green),
                Image.asset('assets/premium/video.png'),
                Headline4(
                    text: 'Correction d\'interros vidéos et exercices avancés',
                    color: green),
                Image.asset('assets/premium/mark.png'),
                Headline4(
                    text:
                        'Comble tes lacunes avec l\'accès aux années précédentes',
                    color: green),
                Image.asset('assets/premium/program.png'),
              ],
            ),
            PrimaryTextButton(
              text: 'Ça m\'interesse',
              width: 160,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
