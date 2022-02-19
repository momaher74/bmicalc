import 'package:bmicalc/homescreen.dart';
import 'package:bmicalc/methods.dart';
import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  CalcScreen({
    Key? key,
    required this.weight,
    required this.height,
  }) : super(key: key);
  int? weight;

  int? height;

  @override
  _CalcScreenState createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    double bmi = height/ weight ;
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Calc',
          style: TextStyle(),
        ),
      ),
      body: Center(
        child: Container(
          child: Wrap(
            children: [
              MyText(
                text: 'Your BMI = ',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              MyText(
                text: bmi.toString(),
                fontSize: 30,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
