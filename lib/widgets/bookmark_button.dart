import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget {
  final VoidCallback? onPressedCallback;

  const BookmarkButton({
    this.onPressedCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressedCallback,
      icon: const Icon(
        Icons.bookmark_outline,
        color: Colors.black,
      ),
    );
  }
}
