import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/util/components.dart';

class WeightAgeBox extends StatelessWidget {
  final String boxText;
  final String ageWeight;
  final VoidCallback add;
  final VoidCallback minus;

  const WeightAgeBox({
    super.key,
    required this.boxText,
    required this.ageWeight,
    required this.add,
    required this.minus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.8,
      width: MediaQuery.of(context).size.width / 4,
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
            boxText,
            style: TextStyle(
              color: lighterTextColor,
              fontSize: 25.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                ageWeight,
                style: TextStyle(
                  color: textColor,
                  fontSize: 50.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                boxText == 'WEIGHT' ? ' kg' : '',
                style: TextStyle(
                  color: lighterTextColor,
                  fontSize: 17.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 45.0,
                width: 45.0,
                child: FloatingActionButton(
                  onPressed: add,
                  backgroundColor: Colors.grey.shade500,
                  child: Icon(
                    Icons.add,
                    size: 20.0.sp,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(width: 15.0.w),
              SizedBox(
                height: 45.0,
                width: 45.0,
                child: FloatingActionButton(
                  onPressed: minus,
                  backgroundColor: Colors.grey.shade500,
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 18.0.sp,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
