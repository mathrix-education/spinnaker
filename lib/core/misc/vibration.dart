import 'package:vibration/vibration.dart';

hapticSuccessFeedback() async {
  if (await Vibration.hasVibrator()) {
    Vibration.vibrate(duration: 50);
  }
}
