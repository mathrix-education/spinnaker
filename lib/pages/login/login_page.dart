import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/environment/environment.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.graphql.dart';
import 'package:mathrix_education_app/main.dart';
import 'package:mathrix_education_app/pages/login/login_state.dart';
import 'package:mathrix_education_app/ui/buttons/social_button.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';
import 'file:///C:/Mathrix/spinnaker/lib/ui/buttons/primary_text_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_form.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget with LoginState {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginFormKey = GlobalKey<FormBuilderState>();

  final _client = graphQLConfiguration.graphQLClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(widget.primaryText, style: Theme.of(context).textTheme.headline1.apply(color: green)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.subtitleText, style: Theme.of(context).textTheme.bodyText1),
                    SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () => setState(() {
                        widget.mode = widget.mode == LoginMode.Login ? LoginMode.Register : LoginMode.Login;
                      }),
                      child: Text(
                        widget.actionText,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LoginForm(formKey: loginFormKey),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      widget.mode = LoginMode.RecoverPassword;
                    }),
                    child: Text(
                      widget.mode == LoginMode.Login ? 'Mot de passe oublié?' : '',
                      style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: green),
                    ),
                  ),
                ),
                PrimaryTextButton(text: 'Se connecter', onPressed: () => _validate(context)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SocialButton(
                  mode: widget.mode == LoginMode.Login ? SocialButtonMode.Login : SocialButtonMode.Register,
                  socialProvider: SocialProvider.Facebook,
                ),
                SizedBox(height: 8),
                SocialButton(
                  mode: widget.mode == LoginMode.Login ? SocialButtonMode.Login : SocialButtonMode.Register,
                  socialProvider: SocialProvider.Google,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _validate(BuildContext context) async {
    var form = loginFormKey.currentState;
    form.save();
    if (form.validate()) {
      Map<String, dynamic> value = form.value;

      MutationOptions options = MutationOptions(
        documentNode: LoginMutation().document,
        variables: <String, String>{
          'email': value['email'],
          'password': value['password'],
        },
      );
      final QueryResult result = await _client.mutate(options);

      if (result.hasException) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Combinaison invalide')));
      } else {
        Login$Mutation login$mutation = Login$Mutation.fromJson(result.data);

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString(mathrixToken, login$mutation.loginBasic.token);

        GraphQLConfiguration.loadAuthToken();

        Navigator.of(context).pushNamedAndRemoveUntil(
          '/dashboard',
          (route) => false,
        );
      }
    }
  }
}
