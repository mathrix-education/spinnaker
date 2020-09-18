import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/texts/headline_4.dart';
import 'package:mathrix_education_app/ui/widgets/app_bar_flexible_space.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The app bar title.
  final String title;

  @override
  final Size preferredSize; // default is 56.0

  CustomAppBar({@required this.title}) : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Headline4(
        text: title,
        color: Colors.white,
      ),
      flexibleSpace: AppBarFlexibleSpace(),
      leading: new IconButton(
        icon: MtxIcon(icon: 'left', onTap: () => Navigator.of(context).pop()),
        onPressed: () => null,
      ),
      automaticallyImplyLeading: false,
    );
  }
}
