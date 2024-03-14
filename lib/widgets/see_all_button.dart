import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  final VoidCallback? onPressedCallback;

  const SeeAllButton({
    this.onPressedCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: onPressedCallback,
            child: const Text(
              'See all',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )),
        const Icon(
          Icons.arrow_forward_outlined,
          size: 15,
        ),
      ],
    );
  }
}
