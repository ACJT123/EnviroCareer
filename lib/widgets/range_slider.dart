import 'package:flutter/material.dart';
import 'package:string_capitalize/string_capitalize.dart';

class CustomRangeSlider extends StatefulWidget {
  final String title;
  final double min;
  final double max;

  const CustomRangeSlider({
    required this.title,
    required this.min,
    required this.max,
    super.key,
  });

  @override
  State<CustomRangeSlider> createState() => CustomRangeSliderState();
}

class CustomRangeSliderState extends State<CustomRangeSlider> {
  late RangeValues _currentRangeValues;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues(widget.min, widget.max);
  }


  @override
  Widget build(BuildContext context) {
    String labelUnit = '';

    String labelMin = _currentRangeValues.start.round().toString();
    String labelMax = _currentRangeValues.end.round().toString();

    if (widget.title == 'salary') {
      labelUnit = "\$$labelMin - \$$labelMax";
    }

    if (widget.title == 'experience') {
      labelUnit = "$labelMin - $labelMax";
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title.capitalize(),
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
                min: widget.min,
                max: widget.max,
                labels: RangeLabels(labelMin, labelMax),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
