import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_card.dart';
import 'package:mathrix_education_app/ui/widgets/skeleton_view.dart';

class CardListWithTitleSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: SkeletonView(child: Headline4(text: 'Chargement...')),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: SkeletonView(
                child: MtxCard(
                  child: SizedBox(height: 80),
                ),
              ),
            );
          },
          itemCount: 5,
        ),
      ],
    ));
  }
}
