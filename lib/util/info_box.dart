import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bmi_calculator/util/components.dart';

class InfoBox extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final bool isFemale;

  const InfoBox({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.isFemale,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resultText,
              style: TextStyle(
                color: CupertinoColors.activeGreen,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bmiResult.toString(),
              style: TextStyle(
                color: textColor,
                fontSize: 45.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              interpretation,
              style: TextStyle(
                color: textColor,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    );
  }
}
