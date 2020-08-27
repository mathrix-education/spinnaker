import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

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

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      attribute: attribute,
      validators: validators,
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: new InputDecoration(
        labelText: label,
        fillColor: Colors.amberAccent,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(16.0),
          borderSide: new BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
