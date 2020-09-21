import 'package:vibration/vibration.dart';

hapticSuccessFeedback() async {
  if (await Vibration.hasVibrator()) {
    Vibration.vibrate(pattern: [50]);
  }
}

hapticPokeFeedback() async {
  if (await Vibration.hasVibrator()) {
    Vibration.vibrate(pattern: [50, 50, 50]);
  }
}
