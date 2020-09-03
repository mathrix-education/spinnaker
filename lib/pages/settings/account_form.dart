import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/core/store/session.state.dart';
import 'package:mathrix_education_app/ui/texts/title_green.dart';
import 'package:mathrix_education_app/ui/variables/validators.dart';
import 'package:mathrix_education_app/ui/widgets/form_field.dart';
import 'package:provider/provider.dart';

class AccountForm extends StatelessWidget {
  /// The form key.
  final GlobalKey<FormBuilderState> formKeyAccount;

  const AccountForm({Key key, this.formKeyAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (context, appState, child) {
      return FormBuilder(
        key: formKeyAccount,
        initialValue: {'username': appState.user.username, 'email': appState.user.email},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleGreen(text: 'Compte'),
            const SizedBox(height: 16),
            MtxTextFormField(label: 'Pseudo', attribute: 'username', validators: [FormBuilderValidators.required()]),
            const SizedBox(height: 20),
            MtxTextFormField(
              label: 'Email',
              textInputType: TextInputType.emailAddress,
              attribute: 'email',
              validators: emailValidators,
            ),
          ],
        ),
      );
    });
  }
}
