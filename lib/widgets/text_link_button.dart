import 'package:flutter/material.dart';

class TextLinkButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressedCallback;
  final Widget? child;
  final TextStyle? style;

  const TextLinkButton({
    Key? key,
    required this.text,
    this.onPressedCallback,
    this.child,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedCallback,
      child: Text(
        text,
        style: style,
      ), // Use child if provided, else use a Text widget with the provided text
    );
  }
}
