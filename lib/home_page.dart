import 'package:envirocareer/job_page.dart';
import 'package:envirocareer/widgets/horizontal_list.dart';
import 'package:envirocareer/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> sampleItemList = [
      {
        'thumbnail': 'https://example.com/thumbnail1.jpg',
        'title': 'Post 1',
        'numOfDaysPosted': '3 days ago',
      },
      {
        'thumbnail': 'https://example.com/thumbnail2.jpg',
        'title': 'Post 2',
        'numOfDaysPosted': '1 day ago',
      },
      {
        'thumbnail': 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        'title': 'Post 3',
        'numOfDaysPosted': '5 days ago',
      },
      {
        'thumbnail': 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        'title': 'Post 3',
        'numOfDaysPosted': '5 days ago',
      },
      {
        'thumbnail': 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        'title': 'Post 3',
        'numOfDaysPosted': '5 days ago',
      },
    ];

    List<Map<String, String>> sampleNewsList = [
      {
        'thumbnail': 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        'title': 'Post 1',
        'numOfDaysPosted': '3 days ago',
        'description':
            "Sidebar123123123124124518927589189578236785 has been collecting the best design links of the day since October 2012. It's maintained by ",
      },
      {
        'thumbnail': 'https://i.ytimg.com/vi/RJEnTRBxaSg/maxresdefault.jpg',
        'title': 'Post 1',
        'numOfDaysPosted': '3 days ago',
        'description':
            "Sidebar has been collecting the best design links of the day since October 2012. It's maintained by ",
      },
      {
        'thumbnail': 'https://example.com/thumbnail1.jpg',
        'title': 'Post 1',
        'numOfDaysPosted': '3 days ago',
        'description':
            "Sidebar has been collecting the best design links of the day since October 2012. It's maintained by ",
      },
      {
        'thumbnail': 'https://example.com/thumbnail1.jpg',
        'title': 'Post 1',
        'numOfDaysPosted': '3 days ago',
        'description':
            "Sidebar has been collecting the best design links of the day since October 2012. It's maintained by ",
      },
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    HorizontalList(
                      listTitle: 'Recommended Jobs',
                      itemList: sampleItemList,
                      onPressedCallback: () {
                        print('hi');
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (BuildContext context) {
                        //     return const JobPage();
                        //   }),
                        // );
                      },
                    ),
                    HorizontalList(
                      listTitle: 'Recommended Training Resources',
                      itemList: sampleItemList,
                      onPressedCallback: () {},
                    ),
                    VerticalList(
                      listTitle: 'Latest news about our mother Earth',
                      itemList: sampleNewsList.sublist(0, 2),
                      onPressedCallback: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Welcome Back !',
          style: GoogleFonts.getFont(
            'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.notifications_none,
          size: 30,
        )
      ],
    );
  }
}
