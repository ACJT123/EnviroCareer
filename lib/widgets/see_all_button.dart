import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  final VoidCallback? onPressedCallback;

  const SeeAllButton({
    Key? key,
    this.onPressedCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedCallback,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 0, vertical: 0)
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'See all',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 2),
          Icon(
            Icons.arrow_forward_outlined,
            size: 15,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
