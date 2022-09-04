// ignore_for_file: deprecated_member_us, deprecated_member_use

import 'package:bmi_calculator/Home.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  double bmi_value;
  String bmi_disp;
  Result(this.bmi_value, this.bmi_disp);
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 22, 26),
        body: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.height * 3 / 4.5,
                  width: MediaQuery.of(context).size.width * 3.6 / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.bmi_disp,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.green[900]),
                      ),
                      Text(
                        widget.bmi_value.toStringAsPrecision(3),
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      showwidget()
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Colors.red,
                  splashColor: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Text(
                          'RE-CALCULATE',
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
                ),
              ),
            )
          ],
        ));
  }

  showwidget() {
    if (widget.bmi_disp == "Healthy Weight")
      return Text(
        'Your health is safe...👍',
        style: TextStyle(
          fontSize: 18,
        ),
      );
    else
      return Text(
        'Your health is not safe...👎',
        style: TextStyle(
          fontSize: 18,
        ),
      );
  }
}
