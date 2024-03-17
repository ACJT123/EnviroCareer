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

    List<Map<String, String>> jobList = [
      {
        'location': 'Kuala Lumpur',
        'company_name': 'ABC Company',
        'company_logo': 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        'job_title': 'Driver',
        'salary': 'MYR 1000',
        'num_of_days_posted': '5',
      },
      {
        'location': 'Los Angeles',
        'company_name': 'Green Energy Solutions Inc.',
        'company_logo': 'https://example.com/company_logo1.jpg',
        'job_title': 'Green Energy Technician',
        'salary': 'USD 45,000',
        'num_of_days_posted': '3',
      },
      {
        'location': 'Berlin',
        'company_name': 'EcoTech GmbH',
        'company_logo': 'https://example.com/company_logo2.jpg',
        'job_title': 'Sustainability Analyst',
        'salary': 'EUR 55,000',
        'num_of_days_posted': '7',
      },
      {
        'location': 'Sydney',
        'company_name': 'CleanTech Pty Ltd',
        'company_logo': 'https://example.com/company_logo3.jpg',
        'job_title': 'Environmental Engineer',
        'salary': 'AUD 80,000',
        'num_of_days_posted': '2',
      },
      {
        'location': 'Tokyo',
        'company_name': 'Renewable Solutions Co.',
        'company_logo': 'https://example.com/company_logo4.jpg',
        'job_title': 'Renewable Energy Project Manager',
        'salary': 'JPY 6,500,000',
        'num_of_days_posted': '1',
      },
      {
        'location': 'London',
        'company_name': 'SolarTech Ltd',
        'company_logo': 'https://example.com/company_logo5.jpg',
        'job_title': 'Solar Panel Installer',
        'salary': 'GBP 30,000',
        'num_of_days_posted': '4',
      },
      {
        'location': 'London',
        'company_name': 'SolarTech Ltd',
        'company_logo': 'https://example.com/company_logo5.jpg',
        'job_title': 'Solar Panel Installer',
        'salary': 'GBP 30,000',
        'num_of_days_posted': '4',
      },
      {
        'location': 'London',
        'company_name': 'SolarTech Ltd',
        'company_logo': 'https://example.com/company_logo5.jpg',
        'job_title': 'Solar Panel Installer',
        'salary': 'GBP 30,000',
        'num_of_days_posted': '4',
      },
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
