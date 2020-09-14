import 'package:vibration/vibration.dart';

hapticSuccessFeedback() async {
  if (await Vibration.hasVibrator()) {
    Vibration.vibrate(duration: 50);
  }
}

hapticPokeFeedback() async {
  if (await Vibration.hasVibrator()) {
    Vibration.vibrate(duration: 100);
  }
}
