import 'package:envirocareer/job_detail.dart';
import 'package:envirocareer/model/job.dart';
import 'package:flutter/material.dart';

class JobListItem extends StatelessWidget {
  final JobModel job;

  const JobListItem({
    required this.job,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return JobDetail(
                companyLogo: job.company_logo,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.black.withOpacity(0.1),
        //   ),
        //   borderRadius: const BorderRadius.all(Radius.circular(15)),
        // ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(job.company_logo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${job.location}, ${job.company_name}',
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      job.job_title,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(job.salary),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.bookmark_border_outlined),
                  Text('${job.num_of_days_posted}d'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
