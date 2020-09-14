import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/button_with_icon.dart';

enum SocialButtonMode { Login, Register }
enum SocialProvider { Facebook, Google, Apple }

Map<SocialProvider, String> socialProvidersNameMap = {
  SocialProvider.Facebook: 'Facebook',
  SocialProvider.Apple: 'Apple',
  SocialProvider.Google: 'Google'
};

Map<SocialProvider, Color> colors = {
  SocialProvider.Facebook: Color(0xff3b5999),
  SocialProvider.Apple: Color(0xff000000),
  SocialProvider.Google: Color(0xff4285f4),
};

class SocialButton extends StatelessWidget {
  /// The onPressed callback.
  final GestureTapCallback onTap;

  /// The mode: login or register.
  final SocialButtonMode mode;

  final SocialProvider socialProvider;

  SocialButton({this.onTap, this.mode, this.socialProvider});

  @override
  Widget build(BuildContext context) {
    String iconName = socialProvidersNameMap[socialProvider].toLowerCase();
    return ButtonWithIcon(
      text: _buttonText,
      color: colors[socialProvider],
      onTap: onTap,
      icon: iconName,
      textColor: Colors.white,
      width: double.infinity,
    );
  }

  get _buttonText {
    return (mode == SocialButtonMode.Login ? 'Connexion' : 'Inscription') +
        ' avec ' +
        socialProvidersNameMap[socialProvider];
  }
}
