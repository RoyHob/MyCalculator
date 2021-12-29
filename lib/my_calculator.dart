import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  @override
  MyCalculatorState createState() => MyCalculatorState();
}

class MyCalculatorState extends State<MyCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "";

  buttonPressed(String buttonText) {
    if (buttonText == "C") {
      result = "g";
    }
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Z Calculator"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  10,
                ),
                color: Colors.redAccent.withOpacity(0.7),
                child: Text(equation, style: TextStyle(fontSize: 30)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(
                  20,
                  20,
                  10,
                  20,
                ),
                color: Colors.greenAccent.withOpacity(0.7),
                child: Text(result, style: TextStyle(fontSize: 40)),
              ),
            ),
            Expanded(child: Divider()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          buildButton("C", 1, Colors.red),
                          buildButton("Back", 1, Colors.blue),
                          buildButton("/", 1, Colors.blue)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton("7", 1, Colors.grey),
                          buildButton("8", 1, Colors.grey),
                          buildButton("9", 1, Colors.grey)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton("4", 1, Colors.grey),
                          buildButton("5", 1, Colors.grey),
                          buildButton("6", 1, Colors.grey)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton("1", 1, Colors.grey),
                          buildButton("2", 1, Colors.grey),
                          buildButton("3", 1, Colors.grey)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton(".", 1, Colors.grey),
                          buildButton("0", 1, Colors.grey),
                          buildButton("00", 1, Colors.grey)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          buildButton("*", 1, Colors.blue)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton("-", 1, Colors.blue)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton("+", 1, Colors.blue)
                        ],
                      ),
                      TableRow(
                        children: [
                          buildButton("=", 2, Colors.red)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
//Questions Wrape two container in the same padding  ?
