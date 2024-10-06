import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/util/bottom_button.dart';
import 'package:bmi_calculator/util/components.dart';
import 'package:bmi_calculator/util/genderBox.dart';
import 'package:bmi_calculator/util/slider_box.dart';
import 'package:bmi_calculator/util/wieght_age_boxes.dart';
import 'package:bmi_calculator/models/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? pickedGender;
  int height = 175;
  int weight = 60;
  int age = 19;

  void calculateButtonPressed() {
    CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          isFemale: pickedGender == Gender.female ? true : false,
          bmiResult: calc.calculateBMI(),
          resultText: calc.getResult(),
          interpretation: calc.getInterpretation(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.r, vertical: 10.0),
          child: Column(
            children: [
              SizedBox(height: 30.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GenderBox(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'Male',
                      onTab: () {
                        setState(
                          () {
                            pickedGender = pickedGender == Gender.male
                                ? null
                                : Gender.male;
                          },
                        );
                      },
                      color:
                          pickedGender == Gender.male ? activeColor : boxColor,
                    ),
                  ),
                  SizedBox(width: 20.0.w),
                  Expanded(
                    child: GenderBox(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'Female',
                      onTab: () {
                        setState(
                          () {
                            pickedGender = pickedGender == Gender.female
                                ? null
                                : Gender.female;
                          },
                        );
                      },
                      color: pickedGender == Gender.female
                          ? activeColor
                          : boxColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0.h),
              Expanded(
                child: SliderBox(
                  height: height.toString(),
                  onChanged: (double newValue) {
                    setState(
                      () {
                        height = newValue.round();
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 15.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: WeightAgeBox(
                      add: () {
                        setState(() {
                          weight++;
                        });
                      },
                      minus: () {
                        setState(() {
                          weight--;
                          if(weight < 0){
                            weight = 0;
                          }
                        });
                      },
                      ageWeight: weight.toString(),
                      boxText: 'WEIGHT',
                    ),
                  ),
                  SizedBox(width: 20.0.w),
                  Expanded(
                    child: WeightAgeBox(
                      add: () {
                        setState(() {
                          age++;
                        });
                      },
                      minus: () {
                        setState(() {
                          age--;
                          if(age < 0){
                            age = 0;
                          }
                        });
                      },
                      ageWeight: age.toString(),
                      boxText: 'AGE',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0.h),
              BottomButton(
                onPressed: calculateButtonPressed,
                buttonText: 'CALCULATE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
