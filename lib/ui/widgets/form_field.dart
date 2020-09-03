import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

class MtxTextFormField extends StatelessWidget {
  MtxTextFormField(
      {Key key,
      @required this.label,
      @required this.attribute,
      this.validators,
      this.textInputType,
      this.obscureText = false})
      : super(key: key);

  /// The label text.
  final String label;

  /// The attribute.
  final String attribute;

  /// The text input type.
  final TextInputType textInputType;

  /// The list of validators.
  final List<FormFieldValidator> validators;

  /// If the text is obscured like in password fields.
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      attribute: attribute,
      validators: validators ?? [],
      keyboardType: textInputType,
      obscureText: obscureText,
      onChanged: (text) {},
      decoration: new InputDecoration(
        labelText: label,
        fillColor: Colors.amberAccent,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(8.0),
          borderSide: new BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: green,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
