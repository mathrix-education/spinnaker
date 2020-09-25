import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/login/login_state.dart';
import 'package:mathrix_education_app/pages/login/social_section.dart';
import 'package:mathrix_education_app/ui/buttons/invisible_button.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page_no_topbar.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/texts/headline_1.dart';
import 'package:mathrix_education_app/ui/texts/underlined.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'package:provider/provider.dart';

import 'login_form.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget with LoginState {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return StandardPageNoTopbar(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Headline1(text: widget.primaryText, color: green),
          LoginForm(
              loginMode: widget.mode,
              onLogin: _finalizeAuthentication,
              onForgotPasswordTap: () => {Navigator.pushNamed(context, RoutePaths.lostPassword)}),
          KeyboardVisibilityProvider(
              child: Column(
            children: [
              SizedBox(height: 80),
              SocialSection(onLogin: _finalizeAuthentication),
              InvisibleButton(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Body(text: widget.subtitleText),
                  SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: () => setState(() {
                      widget.mode = widget.mode == LoginMode.Login ? LoginMode.Register : LoginMode.Login;
                    }),
                    child: Underlined(
                      text: widget.actionText,
                    ),
                  ),
                ]),
              ),
            ],
          )),
        ],
      ),
    );
  }

  /// Finalize the authentication process once the token has been retrieved with the login provider
  /// (Google, Facebook, or the Api).
  Future<void> _finalizeAuthentication(String token) async {
    GraphQLConfiguration.token = token;
    await GraphQLConfiguration.token;
    bool loadedSucessfully = await Provider.of<AppState>(context, listen: false).loadUser();
    if (loadedSucessfully) {
      Navigator.of(context).pushNamedAndRemoveUntil(RoutePaths.dashboard, (route) => false);
    } else {
      Flushbar(
        message: 'Le chargement du profil a échoué, veuillez réessayer.',
        duration: Duration(seconds: 4),
      ).show(context);
    }
  }
}
