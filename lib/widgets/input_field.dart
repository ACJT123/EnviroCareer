import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? inputType;

  InputField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.inputType == 'password' ? isHide : false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.inputType == 'password'
            ? IconButton(
                icon: Icon(
                  isHide ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
              )
            : null,
      ),
    );
  }
}
