import 'package:envirocareer/widgets/bookmark_button.dart';
import 'package:envirocareer/widgets/chip_group.dart';
import 'package:envirocareer/widgets/custom_search_bar.dart';
import 'package:envirocareer/widgets/filter_button.dart';
import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'All',
      'Transportation',
      'Energy Efficiency',
      'Water Management',
      'Green Building',
    ];

    return Container(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSearchBar(),
                  FilterButton(),
                  BookmarkButton(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ChipGroup(items: items),
          ],
        ));
  }
}
