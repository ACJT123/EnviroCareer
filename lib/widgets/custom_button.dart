import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final String? mode;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressedCallback;
  final Widget prefixIcon;

  const CustomButton({
    Key? key,
    this.text,
    this.mode,
    this.backgroundColor,
    this.textColor,
    this.onPressedCallback,
    required(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        child: ElevatedButton.icon(
          onPressed: onPressedCallback,
          icon: prefixIcon,
          label: Text(
            text!,
            style: GoogleFonts.getFont('Roboto',
                fontSize: 15, color: textColor, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        ));
  }
}
