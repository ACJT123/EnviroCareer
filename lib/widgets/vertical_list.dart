import 'package:envirocareer/widgets/see_all_button.dart';
import 'package:envirocareer/widgets/text_link_button.dart';
import 'package:envirocareer/widgets/vertical_list_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalList extends StatelessWidget {
  final String listTitle;
  final List<Map<String, String>> itemList;
  final VoidCallback? onPressedCallback;

  const VerticalList({
    required this.itemList,
    required this.listTitle,
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
            Text(listTitle),
            SeeAllButton(
              onPressedCallback: () {},
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView(
            children: itemList.map((item) {
              return VerticalListItem(
                title: item['title'],
                description: item['description'],
                thumbnail: item['thumbnail'],
                numOfDaysPosted: item['numOfDaysPosted'],
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
