import 'package:flutter/material.dart';
import 'horizontal_list_item.dart'; // Assuming the file is in the same directory.

class HorizontalList extends StatelessWidget {
  final String listTitle;
  final List<Map<String, String>> itemList;

  const HorizontalList({
    required this.listTitle,
    required this.itemList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(listTitle!),
            const Row(
              children: [
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  size: 15,
                ),
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: itemList.map((item) {
              return HorizontalListItem(
                thumbnail: item['thumbnail'],
                title: item['title'],
                numOfDaysPosted: item['numOfDaysPosted'],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
