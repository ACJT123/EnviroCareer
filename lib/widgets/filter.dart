import 'package:envirocareer/widgets/range_slider.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(''),
              Text(
                textAlign: TextAlign.center,
                'Apply Filter',
                style: TextStyle(fontSize: 18),
              ),
              GestureDetector(
                child: Icon(Icons.close),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CustomRangeSlider(title: 'salary'),
          CustomRangeSlider(title: 'experience'),
        ],
      ),
    );
  }
}
