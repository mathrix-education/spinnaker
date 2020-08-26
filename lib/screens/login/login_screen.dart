import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Connexion'),
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/dashboard', arguments: 'dumb_arg');
          },
        ),
      ),
    );
  }
}
