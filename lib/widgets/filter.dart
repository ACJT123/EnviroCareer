import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.filter_alt_outlined),
              SizedBox(
                width: 10,
              ),
              Text(
                'Filter',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              Icon(Icons.close),
            ],
          ),
          Text('Salary Range'),
          RangeSlider(
            values: RangeValues(10, 40),
            max: 100,
            divisions: 5,
            labels: RangeLabels(
              RangeValues(10, 40).start.round().toString(),
              RangeValues(10, 40).end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              // setState(() {
              //   _currentRangeValues = values;
              // });
            },
          ),
        ],
      ),
    );
  }
}
