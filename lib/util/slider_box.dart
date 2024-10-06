import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bmi_calculator/util/components.dart';

class SliderBox extends StatelessWidget {
  final String height;
  final ValueChanged<double> onChanged;

  const SliderBox({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(0, 3),
            blurRadius: 6.0.r,
            spreadRadius: 2.0.r,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
              color: lighterTextColor,
              fontSize: 30.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height,
                style: TextStyle(
                  color: textColor,
                  fontSize: 40.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' cm',
                style: TextStyle(
                  color: lighterTextColor,
                  fontSize: 17.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              inactiveTrackColor: const Color(0xff88d8e9),
              activeTrackColor: Colors.white,
              thumbColor: textColor,
              overlayColor: activeColor,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0.r),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0.r),
            ),
            child: Slider(
              value: int.parse(height).toDouble(),
              min: 130.0,
              max: 200.0,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}