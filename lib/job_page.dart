import 'package:envirocareer/model/job.dart';
import 'package:envirocareer/widgets/bookmark_button.dart';
import 'package:envirocareer/widgets/chip_group.dart';
import 'package:envirocareer/widgets/custom_search_bar.dart';
import 'package:envirocareer/widgets/filter_button.dart';
import 'package:envirocareer/widgets/job/list.dart';
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

    List<JobModel> jobList = const [
      JobModel(
        location: 'Kuala Lumpur',
        company_name: 'ABC Company',
        company_logo: 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        job_title: 'Driver',
        salary: 'MYR 1000',
        num_of_days_posted: '5',
      ),
      JobModel(
        location: 'Singapore',
        company_name: 'XYZ Corporation',
        company_logo: 'https://st3.depositphotos.com/43745012/44906/i/450/depositphotos_449066958-stock-photo-financial-accounting-logo-financial-logo.jpg',
        job_title: 'Software Engineer',
        salary: 'SGD 3000',
        num_of_days_posted: '3',
      ),
      JobModel(
        location: 'New York',
        company_name: 'Tech Innovators',
        company_logo: 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/company-logo-design-template-e089327a5c476ce5c70c74f7359c5898_screen.jpg?ts=1672291305',
        job_title: 'Data Analyst',
        salary: 'USD 4000',
        num_of_days_posted: '7',
      ),
      JobModel(
        location: 'Los Angeles',
        company_name: 'Digital Solutions',
        company_logo: 'https://www.thepixelfreak.co.uk/wp-content/uploads/2019/05/Entwined-M-Logo.png',
        job_title: 'Graphic Designer',
        salary: 'USD 3500',
        num_of_days_posted: '2',
      ),
      JobModel(
        location: 'London',
        company_name: 'Global Enterprises',
        company_logo: 'https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/apple-logo.png',
        job_title: 'Marketing Manager',
        salary: 'GBP 2500',
        num_of_days_posted: '4',
      ),
      JobModel(
        location: 'Tokyo',
        company_name: 'Tech Giants',
        company_logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4WqQAxjGWRPIo4D3r31rz3-fBm3cqPF6GAA&usqp=CAU',
        job_title: 'Software Developer',
        salary: 'JPY 350000',
        num_of_days_posted: '6',
      ),
      JobModel(
        location: 'Berlin',
        company_name: 'Innovative Solutions',
        company_logo: 'https://thelogocompany.net/wp-content/uploads/2022/01/0008_federal-landscaping-logo-2.png',
        job_title: 'Product Manager',
        salary: 'EUR 4000',
        num_of_days_posted: '1',
      ),
      JobModel(
        location: 'Sydney',
        company_name: 'Tech Innovations',
        company_logo: 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/corporate-company-logo-design-template-2402e0689677112e3b2b6e0f399d7dc3_screen.jpg?ts=1561532453',
        job_title: 'UX/UI Designer',
        salary: 'AUD 3000',
        num_of_days_posted: '3',
      ),
      JobModel(
        location: 'Paris',
        company_name: 'Creative Minds',
        company_logo: 'https://venngage-wordpress.s3.amazonaws.com/uploads/2019/04/Evergreen-Business-Logo.png',
        job_title: 'Content Writer',
        salary: 'EUR 3000',
        num_of_days_posted: '4',
      ),
      JobModel(
        location: 'Toronto',
        company_name: 'Tech Innovate',
        company_logo: 'https://api.freelogodesign.org/assets/thumb/logo/ca1e56dc3316402b91c5274384917c67_400.png?t=638297075413950000',
        job_title: 'Software Engineer',
        salary: 'CAD 4000',
        num_of_days_posted: '5',
      ),
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: JobList(list: jobList),
            )
          ],
        ));
  }
}
