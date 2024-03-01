import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? inputType;
  final TextEditingController? controller;

  InputField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
    this.controller,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        controller: TextEditingController(),
        obscureText: widget.inputType == 'password' ? isHide : false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter ${widget.inputType}';
          }
          return null;
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0.55),
              width: 1,
            ),
          ),
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
      ),
    );
  }
}
