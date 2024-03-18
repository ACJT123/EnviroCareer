import 'package:envirocareer/model/job.dart';
import 'package:envirocareer/widgets/job/list_item.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  final List<JobModel> list;

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
            job: item,
          );
        }).toList(),
      ),
    );
  }
}
