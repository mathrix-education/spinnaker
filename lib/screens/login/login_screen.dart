import 'package:flutter/material.dart';
import 'package:mathrix_education_app/screens/login/login_form.dart';
import 'package:mathrix_education_app/ui/layouts/mtx_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MtxPage(
        body: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}
