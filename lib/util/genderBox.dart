import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bmi_calculator/util/components.dart';

class GenderBox extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  final Color color;
  final VoidCallback onTab;

  const GenderBox({
    super.key,
    required this.genderIcon,
    required this.genderText,
    required this.color,
    required this.onTab
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          color: color,
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
            Icon(
              genderIcon,
              size: 80.0,
              color: textColor,
            ),
            SizedBox(height: 10.0.h),
            Text(
              genderText,
              style: TextStyle(
                color: textColor,
                fontSize: 25.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
