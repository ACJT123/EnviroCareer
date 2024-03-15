
import 'package:envirocareer/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CustomSearchBar()
            ],
          )
        ],
      ),
    );
  }
}
