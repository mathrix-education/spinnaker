// Define a custom Form widget.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mathrix_education_app/core/environment/environment.dart';
import 'package:mathrix_education_app/core/graphql/graphql_client.dart';
import 'package:mathrix_education_app/core/graphql/queries.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key key}) : super(key: key);

  /// The global formBuilder key.
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  final _client = graphQLConfiguration.graphQLClient();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return FormBuilder(
      key: _formKey,
      initialValue: {'email': '', 'password': ''},
      autovalidate: true, // todo, validate pristine
      child: Center(
        child: Column(
          children: [
            // Add TextFormFields and RaisedButton here.
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: MtxTextFormField(
                label: "Email",
                attribute: 'email',
                textInputType: TextInputType.emailAddress,
                validators: [
                  FormBuilderValidators.email(),
                  FormBuilderValidators.required(),
                ],
              ),
            ),
            MtxTextFormField(
              label: "Mot de passe",
              attribute: 'password',
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
              validators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(6)
              ],
            ),
            RaisedButton(
              onPressed: () => _validate(context),
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }

  _validate(BuildContext context) async {
    var form = _formKey.currentState;
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
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Combinaison invalide')));
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
