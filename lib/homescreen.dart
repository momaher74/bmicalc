import 'package:bmicalc/calcscreen.dart';
import 'package:bmicalc/methods.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

bool maleColor = false;
bool femaleColor = false;
int weight = 50;
double height = 50;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'BMI Calc',
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          MyText(
            text: 'What\'s your gender ?',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          MyHeightSizedBox(x: 10),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    maleColor = true;
                    femaleColor = false;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(12),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    color: maleColor == true ? Colors.cyanAccent : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.male,
                    size: 120,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    femaleColor = true;
                    maleColor = false;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(12),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    color:
                        femaleColor == true ? Colors.cyanAccent : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.female,
                    size: 140,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MyText(
            text: 'What\'s your weight ?',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          MyHeightSizedBox(x: 20),
          Row(
            children: [
              MyWidthSizedBox(x: 90),
              MyElevetedButton(
                color: Colors.white,
                width: 100,
                widget: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 30,
                ),
                function: () {
                  setState(() {
                    weight++;
                  });
                },
              ),
              MyWidthSizedBox(x: 12),
              MyText(
                text: weight.toString(),
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              MyWidthSizedBox(x: 12),
              MyElevetedButton(
                width: 100,
                color: Colors.white,
                widget: const Icon(
                  Icons.minimize,
                  color: Colors.black,
                  size: 30,
                ),
                function: () {
                  setState(() {
                    if (weight > 0) {
                      weight--;
                    }
                  });
                },
              ),
            ],
          ),
          MyHeightSizedBox(x: 30),
          MyText(
            text: 'What\'s your height ?',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          Slider(
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            min: 40,
            value: height,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
            max: 200,
          ),
          MyHeightSizedBox(x: 20),
          MyText(
            text: height.toInt().toString(),
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          MyHeightSizedBox(x: 20),
          MyElevetedButton(
            width: 380,
            color: Colors.white,
            widget: MyText(text: 'Calc', fontSize: 20),
            function: () {
              push(
                context,
                CalcScreen(
                  weight: weight,
                  height: height.toInt(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
