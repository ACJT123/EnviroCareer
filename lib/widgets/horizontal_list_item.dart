import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String? thumbnail;
  final String? title;
  final String? numOfDaysPosted;

  const HorizontalListItem({
    this.thumbnail,
    this.title,
    this.numOfDaysPosted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(thumbnail!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(title!),
          Text(numOfDaysPosted!),
        ],
      ),
    );
  }
}
