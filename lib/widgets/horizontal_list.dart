import 'package:envirocareer/widgets/see_all_button.dart';
import 'package:flutter/material.dart';
import 'horizontal_list_item.dart'; // Assuming the file is in the same directory.

class HorizontalList extends StatelessWidget {
  final String listTitle;
  final List<Map<String, String>> itemList;
  final VoidCallback? onPressedCallback;

  const HorizontalList({
    required this.listTitle,
    required this.itemList,
    required this.onPressedCallback,
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
            SeeAllButton(
              onPressedCallback: () {},
            ),
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
