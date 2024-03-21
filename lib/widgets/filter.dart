import 'package:envirocareer/widgets/range_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              const Text(''),
              const Text(
                textAlign: TextAlign.center,
                'Apply Filter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
            height: 30,
          ),
          CustomRangeSlider(title: 'salary', min: 0, max: 1000),
          CustomRangeSlider(title: 'experience', min: 0, max: 5),
          Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  // style: ElevatedButton.styleFrom(
                  //   backgroundColor: const Color(0xFF98B873),
                  // ),
                  child: const Text(
                    'Clear',
                    style: TextStyle(
                      color: Color(0xFF98B873),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF98B873),
                  ),
                  child: const Text(
                    'Apply',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
