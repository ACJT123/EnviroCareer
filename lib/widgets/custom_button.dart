import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final String? mode;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressedCallback;

  const CustomButton({
    Key? key,
    this.text,
    this.mode,
    this.backgroundColor,
    this.textColor,
    this.onPressedCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: onPressedCallback,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        child: Text(
          text!,
          style: GoogleFonts.getFont(
            'Roboto',
            fontSize: 15,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
