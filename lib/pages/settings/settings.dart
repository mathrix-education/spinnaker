import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/layouts/standard_page.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'Paramètres',
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleGreen(text: 'Compte'),
            const SizedBox(height: 16),
            MtxTextFormField(
              label: 'Pseudo',
              attribute: 'username',
            ),
            const SizedBox(height: 24),
            MtxTextFormField(
              label: 'Email',
              textInputType: TextInputType.emailAddress,
              attribute: 'email',
            ),
            const SizedBox(height: 24),
            TitleGreen(text: 'Changer de mot de passe'),
            const SizedBox(height: 16),
            MtxTextFormField(
              label: 'Mot de passe',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              attribute: 'password',
            ),
            const SizedBox(height: 16),
            MtxTextFormField(
              label: 'Mot de passe',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              attribute: 'password',
            ),
            MaterialButton(
                minWidth: double.infinity,
                color: Colors.yellow,
                disabledColor: Colors.grey,
                child: Text('Enregistrer les changements')),
          ],
        ),
      ),
    );
  }
}
