import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  final String title;

  const CustomRangeSlider({
    required this.title,
    super.key,
  });

  @override
  State<CustomRangeSlider> createState() => CustomRangeSliderState();
}

class CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(0, 1000);

  @override
  Widget build(BuildContext context) {
    String labelUnit = '';
    
    // "\$${_currentRangeValues.start.round().toString()} - \$${_currentRangeValues.end.round().toString()}"

    if (widget.title == 'salary'){

    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              labelUnit,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          child: SliderTheme(
            data: SliderThemeData(
              activeTrackColor: const Color(0xFF98B873).withOpacity(0.7),
              thumbColor: const Color(0xFF98B873),
            ),
            child: RangeSlider(
              values: _currentRangeValues,
              max: 1000,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
