import 'package:flutter/material.dart';

class ChipGroup extends StatelessWidget {
  final List<String> items;

  const ChipGroup({
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: FilterChip(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                label: Text(item),
                onSelected: (bool selected) {
                  // Provide functionality here to handle chip selection
                },
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
                selected: item == 'All' ? true : false,
                selectedColor: Colors.black.withOpacity(0.5),
                backgroundColor: const Color(0xFF98B873).withOpacity(0.8),
              ),
            );
          }).toList(),
        ));
  }
}
