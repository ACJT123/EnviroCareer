import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  final String? thumbnail;
  final String? title;
  final String? description;
  final String? numOfDaysPosted;

  const VerticalListItem({
    this.thumbnail,
    this.title,
    this.description,
    this.numOfDaysPosted,
    Key? key, // Fix the super key parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${title!} - ${numOfDaysPosted!}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      description!,
                      overflow: TextOverflow.ellipsis, // Truncate text
                      maxLines: 4, // Set maximum number of lines
                    ),
                  ),
                ],
              ),
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
            ],
          ),
        ],
      ),
    );
  }
}
