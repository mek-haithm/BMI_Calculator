import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bmi_calculator/util/components.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const BottomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: boxColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20.0.r, vertical: 10.0.r),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0.r),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25.0.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
