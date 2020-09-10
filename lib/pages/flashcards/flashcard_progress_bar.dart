import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/ui/widgets/progress_bar.dart';

class FlashcardProgressBar extends StatelessWidget{

  final int index;

  final int total;

  const FlashcardProgressBar({Key key, this.index, this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 250, child: ProgressBar(value: index / total, height: 30)),
        ],
      ),
    );
  }

}