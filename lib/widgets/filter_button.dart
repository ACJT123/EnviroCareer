import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback? onPressedCallback;

  const FilterButton({
    this.onPressedCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressedCallback,
      icon: const Icon(
        Icons.filter_alt_outlined,
        color: Colors.black,
      ),
    );
  }
}
