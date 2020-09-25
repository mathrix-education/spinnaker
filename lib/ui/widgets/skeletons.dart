import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/widgets/skeleton_view.dart';

import 'discipline_card.dart';class Skeletons extends StatelessWidget {

  Skeletons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [0,1,2,3,4,5].map((e) => SkeletonView(
      child: DisciplineCard(name: 'maths', slug: 'maths'))).toList()
    );
  }
}
