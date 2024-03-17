import 'package:envirocareer/widgets/job/list_item.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  final List<Map<String, String>> list;

  const JobList({
    required this.list,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView(
        children: list.map((item) {
          return JobListItem(
            companyLogo: item['company_logo']!,
            companyName: item['company_name']!,
            location: item['location']!,
            jobTitle: item['job_title']!,
            salary: item['salary']!,
            numOfDaysPosted: item['num_of_days_posted']!,
          );
        }).toList(),
      ),
    );
  }
}
