import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:mathrix_education_app/core/environment/environment.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/routing/routes.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/pages/login/login_state.dart';
import 'package:mathrix_education_app/pages/login/social_section.dart';
import 'package:mathrix_education_app/pages/login/top_section.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_form.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget with LoginState {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopSection(
              primaryText: widget.primaryText,
              subtitleText: widget.subtitleText,
              actionText: widget.actionText,
              onAction: () => setState(() {
                widget.mode = widget.mode == LoginMode.Login ? LoginMode.Register : LoginMode.Login;
              }),
            ),
            LoginForm(
              loginMode: widget.mode,
              onLogin: _finalizeAuthentication,
              onForgotPasswordTap: () => setState(
                () => widget.mode = LoginMode.RecoverPassword,
              ),
            ),
            KeyboardVisibilityProvider(child: SocialSection(onLogin: _finalizeAuthentication)),
          ],
        ),
      ),
    );
  }

  /// Finalize the authentication process once the token has been retrieved with the login provider
  /// (Google, Facebook, or the Api).
  Future<void> _finalizeAuthentication(String token) async {
    GraphQLConfiguration.token = token;
    await GraphQLConfiguration.token;
    await Provider.of<AppState>(context, listen: false).loadUser();
    Navigator.of(context).pushNamedAndRemoveUntil(RoutePaths.dashboard, (route) => false);
  }
}
