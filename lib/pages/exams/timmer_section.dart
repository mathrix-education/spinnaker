import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:mathrix_education_app/ui/widgets/mtx_icon.dart';

class TimerSection extends StatefulWidget {
  /// The onTimerExpired event.
  final VoidCallback onTimerExpired;
  final VoidCallback onPause;

  final int duration;

  const TimerSection({Key key, this.onTimerExpired, this.onPause, this.duration}) : super(key: key);

  @override
  TimerSectionState createState() => TimerSectionState();
}

class TimerSectionState extends State<TimerSection> {
  Timer _timer;
  int seconds = 30;
  int minutes = 0;

  @override
  void initState() {
    super.initState();
    minutes = widget.duration;
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    String paddedMinutes = minutes.toString().padLeft(2, '0');
    String paddedSeconds = seconds.toString().padLeft(2, '0');

    return Row(
      children: [
        MtxIcon(icon: 'time'),
        SizedBox(width: 16),
        Text(
          'Temps restant:  $paddedMinutes: $paddedSeconds',
          style: TextStyle(fontWeight: FontWeight.bold, color: grey, fontFamily: 'Poppins'),
        ),
        Expanded(
          child: GestureDetector(
            onTap: widget.onPause,
            child: Body(
              text: 'Mettre en pause',
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (seconds < 1) {
            seconds = 59;
            minutes--;
          } else {
            seconds--;
          }

          if (minutes < 0) {
            minutes = 0;
            widget.onTimerExpired.call();
            _timer.cancel();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
