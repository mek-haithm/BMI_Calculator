import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bmi_calculator/util/bottom_button.dart';
import 'package:bmi_calculator/util/components.dart';
import 'package:bmi_calculator/util/info_box.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final bool isFemale;

  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.isFemale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.r, vertical: 10.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30.0.h),
                Text(
                  'Your BMI Result',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 30.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.0.h),
                Expanded(
                  child: InfoBox(
                    isFemale: isFemale,
                    bmiResult: bmiResult,
                    interpretation: interpretation,
                    resultText: resultText,
                  ),
                ),
                SizedBox(height: 15.0.h),
                BottomButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  buttonText: 'RE-CALCULATE',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
