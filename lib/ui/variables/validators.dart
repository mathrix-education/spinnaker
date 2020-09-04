import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

List<FormFieldValidator> passwordValidators = [
  FormBuilderValidators.minLength(6,
      errorText: 'Un mot de passe d\'au moins 6 caractères est demandé', allowEmpty: true)
];

List<FormFieldValidator> emailValidators = [
  FormBuilderValidators.email(errorText: 'Veuillez entrer un email valide.'),
  FormBuilderValidators.required(errorText: 'L\'email est requis.'),
];
