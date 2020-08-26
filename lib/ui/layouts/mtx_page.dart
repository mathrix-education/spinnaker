import 'package:flutter/cupertino.dart';

class MtxPage extends StatefulWidget {
  MtxPage({Key key, this.body}) : super(key: key);

  /// The projected body widget.
  final Widget body;

  @override
  _MtxPageState createState() => _MtxPageState();
}

class _MtxPageState extends State<MtxPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: widget.body,
    );
  }
}
