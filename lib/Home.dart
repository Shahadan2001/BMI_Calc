// ignore_for_file: deprecated_member_use

import 'package:bmi_calculator/Result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int height = 150;
  int age = 25;
  int weight = 45;

  int i = 0, j = 0;
  bool isSelected1 = false;
  bool isSelected2 = false;
  double bmi = 0;
  String disp = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 22, 26),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.white10,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  height: 200,
                  minWidth: 170,
                  child: RaisedButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 100,
                          color: Colors.white60,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: (isSelected1)
                        ? Colors.blueGrey[900]
                        : Colors.blueGrey[600],
                    onPressed: () {
                      setState(() {
                        if (isSelected1) {
                          isSelected1 = false;
                        } else {
                          isSelected1 = true;
                          isSelected2 = false;
                        }
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  height: 200,
                  minWidth: 170,
                  child: RaisedButton(
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 100,
                          color: Colors.white60,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: (isSelected2)
                        ? Colors.blueGrey[900]
                        : Colors.blueGrey[600],
                    onPressed: () {
                      setState(() {
                        j++;
                        if (isSelected2) {
                          isSelected2 = false;
                        } else {
                          isSelected2 = true;
                          isSelected1 = false;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.blueGrey[600],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Text.rich(TextSpan(
                      style: TextStyle(color: Colors.white60),
                      children: [
                        TextSpan(
                            text: '$height',
                            style: TextStyle(
                                fontSize: 70, fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'cm',
                            style: TextStyle(color: Colors.black, fontSize: 20))
                      ])),
                  Slider(
                    value: height.toDouble(),
                    max: 250,
                    min: 0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    inactiveColor: Colors.white60,
                    activeColor: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Text(
                        '$weight',
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white60,
                              onPrimary: Colors.black,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {
                              setState(() {
                                if (weight > 0) {
                                  weight--;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white60,
                                onPrimary: Colors.black,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(8)),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          'AGE',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Text(
                        '$age',
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white60,
                                onPrimary: Colors.black,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(8)),
                            onPressed: () {
                              setState(() {
                                if (age > 0) {
                                  age--;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white60,
                                onPrimary: Colors.black,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(8)),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    splashColor: Colors.black,
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        bmi = weight * 10000 / (height * height);
                        if (bmi < 18.5) {
                          disp = "Underweight";
                        } else if (bmi >= 18.5 && bmi < 24.9) {
                          disp = "Healthy Weight";
                        } else if (bmi >= 24.9 && bmi < 29.9) {
                          disp = "Overweight";
                        } else {
                          disp = "Obesity";
                        }
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Result(bmi, disp),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text(
                            'CALCULATE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 25,
                                color: Colors.white60),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            indent: 100,
                            endIndent: 100,
                            color: Colors.black,
                            thickness: 5,
                          ),
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
