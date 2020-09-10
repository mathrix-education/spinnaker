import 'package:flutter/cupertino.dart';
import 'package:mathrix_education_app/ui/buttons/button_with_icon.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class CheckAnswerArea extends StatelessWidget {
  final void Function(bool correct) onCheck;


  const CheckAnswerArea({Key key, this.onCheck}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Visibility(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonWithIcon(
            textColor: green,
            text: 'J\'ai faux',
            icon: 'close',
            onTap: () => onCheck(false),
          ),
          ButtonWithIcon(
            textColor: green,
            text: 'J\'ai juste',
            icon: 'close',
            onTap: () => onCheck(true),
          ),
        ],
      ),
    );
  }
}
