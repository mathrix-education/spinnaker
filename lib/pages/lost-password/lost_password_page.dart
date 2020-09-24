// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/ui/buttons/primary_text_button.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/body.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';

class LostPasswordPage extends StatefulWidget {
  @override
  _LostPasswordState createState() => _LostPasswordState();
}

class _LostPasswordState extends State<LostPasswordPage> {

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();


  @override
  void initState() {
    super.initState();
    print('init lost');
  }

  _validate() {
      print(formKey.currentState);
    if(formKey.currentState.validate()) {
      print('good');
    }
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Mot de passe perdu',
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Body(text: 'Ecris ton email, tu reçevras un email de réinitialisation'),
            SizedBox(
              height: 85,
              child: MtxTextFormField(
                label: "Email",
                attribute: 'email',
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
                validators: emailValidators,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => _validate(),
              ),
            ),
            PrimaryTextButton(
              text: 'Envoyer',
              onPressed: () => _validate(),
              width: double.infinity,
              enabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
