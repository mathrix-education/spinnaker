import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  final void Function() onTap;

  /// The mode: login or register.
  final SocialButtonMode mode;

  final SocialProvider socialProvider;

  SocialButton({this.onTap, this.mode, this.socialProvider});

  @override
  Widget build(BuildContext context) {
    String iconName = socialProvidersNameMap[socialProvider].toLowerCase();
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      minWidth: double.infinity,
      color: colors[socialProvider],
      onPressed: () => onTap(),
      child: SizedBox(
        height: 48,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            height: 30,
            image: AssetImage('assets/icons/$iconName.png'),
          ),
          SizedBox(width: 8),
          Text(
            (mode == SocialButtonMode.Login ? 'Connexion' : 'Inscription') +
                ' avec ' +
                socialProvidersNameMap[socialProvider],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
