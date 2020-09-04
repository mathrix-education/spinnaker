import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/pages/login/login_state.dart';
import 'package:mathrix_education_app/ui/buttons/social_button.dart';
import '../../main.dart';

class SocialSection extends StatelessWidget {
  final LoginMode mode;

  final GoogleSignIn _googleClient = GoogleSignIn(scopes: ['email']);

  final FacebookLogin facebookLogin = FacebookLogin();

  final Function(String token) onLogin;

  final _client = graphQLConfiguration.graphQLClient();

  SocialSection({Key key, this.mode, this.onLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);
    return isKeyboardVisible
        ? SizedBox.shrink()
        : Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SocialButton(
                mode: mode == LoginMode.Login ? SocialButtonMode.Login : SocialButtonMode.Register,
                socialProvider: SocialProvider.Facebook,
                onTap: () => facebookSignIn(context),
              ),
              SizedBox(height: 8),
              SocialButton(
                  mode: mode == LoginMode.Login ? SocialButtonMode.Login : SocialButtonMode.Register,
                  socialProvider: SocialProvider.Google,
                  onTap: () => googleSignIn(context)),
            ],
          );
  }

  googleSignIn(BuildContext context) async {
    try {
      bool isSignedIn = await _googleClient.isSignedIn();

      if (isSignedIn) {
        await _googleClient.disconnect();
      }

      GoogleSignInAccount googleResponse = await _googleClient.signIn();
      String accessToken = (await googleResponse.authentication).accessToken;
      print(accessToken);

      MutationOptions options = MutationOptions(
        documentNode: LoginWithGoogleMutation().document,
        variables: LoginWithGoogleArguments(accessToken: accessToken).toJson(),
      );

      final QueryResult mutationResult = await _client.mutate(options);

      if (!mutationResult.hasException) {
        LoginWithGoogle$Mutation loginWithGoogle$Mutation = LoginWithGoogle$Mutation.fromJson(mutationResult.data);
        onLogin(loginWithGoogle$Mutation.loginWithGoogle.token);
      }
    } catch (error) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('L\'Authentification Google a échoué')));
    }
  }

  facebookSignIn(BuildContext context) async {
    await facebookLogin.logOut();
    final result = await facebookLogin.logIn(['email']);

    if (result.status == FacebookLoginStatus.loggedIn) {
      MutationOptions options = MutationOptions(
        documentNode: LoginWithFacebookMutation().document,
        variables: LoginWithFacebookArguments(accessToken: result.accessToken.token).toJson(),
      );

      final QueryResult mutationResult = await _client.mutate(options);
      if (!mutationResult.hasException) {
        LoginWithFacebook$Mutation loginWithGoogle$Mutation = LoginWithFacebook$Mutation.fromJson(mutationResult.data);
        onLogin(loginWithGoogle$Mutation.loginWithFacebook.token);
      }
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('L\'Authentification Facebook a échoué')));
    }
  }
}
