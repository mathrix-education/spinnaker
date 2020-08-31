import 'package:flutter/material.dart';
import 'package:mathrix_education_app/ui/widgets/app_bar_flexible_space.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  /// The app bar title.
  final String title;

  @override
  final Size preferredSize; // default is 56.0

  CustomAppBar({
    Key key,
    @required this.title,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.headline4.apply(color: Colors.white),
      ),
      flexibleSpace: AppBarFlexibleSpace(),
      leading: new IconButton(
        icon: Image(
          image: AssetImage('assets/icons/left.png'),
          height: 30,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
