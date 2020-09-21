import 'package:flutter/widgets.dart';

/// The DisallowedGlowAnimation scroll behavior is a configuration to be passed in
/// the ScrollConfiguration widget to disallow the glow effect on scroll.
class DisallowedGlowAnimation extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
