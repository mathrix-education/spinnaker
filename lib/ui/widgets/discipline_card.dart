import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_card.dart';

class DisciplineCard extends StatelessWidget {
  final String name;
  final String slug;

  DisciplineCard({
    this.name,
    this.slug,
});

  @override
  Widget build(BuildContext context) {
    return MtxCard(
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Headline4(text: name),
              ),
            ),
            Image.asset('assets/disciplines/$slug.png'),
          ],
        ),
      ),
    );
  }
}
