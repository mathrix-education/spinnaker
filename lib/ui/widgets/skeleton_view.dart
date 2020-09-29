import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/widgets/skeletons.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonView extends StatelessWidget {
  final Widget child;

  SkeletonView({this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200],
      highlightColor: Colors.grey[350],
      child: child ?? Skeletons());
  }
}
