import 'package:flutter/material.dart';

class JobListItem extends StatelessWidget {
  final String companyLogo;
  final String companyName;
  final String location;
  final String jobTitle;
  final String salary;
  final String numOfDaysPosted;

  const JobListItem({
    required this.companyLogo,
    required this.companyName,
    required this.location,
    required this.jobTitle,
    required this.salary,
    required this.numOfDaysPosted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Card Clicked");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.1),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(companyLogo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$location, $companyName',
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      jobTitle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(salary),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.bookmark_border_outlined),
                  Text('${numOfDaysPosted}d'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
