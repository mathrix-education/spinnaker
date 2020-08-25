import 'package:flutter/material.dart';
import 'file:///C:/Users/Dimitri/AndroidStudioProjects/mathrix_education_app/lib/screens/dashboards/dashboard.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Connexion'),
          onPressed: () {
            Navigator.push(
              // Navigate to second route when tapped.
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),
      ),
    );
  }
}
