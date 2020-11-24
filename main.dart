import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculatorlogic.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

Logic calc = Logic();

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    calc.finalResult,
                    style: TextStyle(color: Colors.black, fontSize: 70),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('AC', Colors.redAccent, Colors.black, () {
                  setState(() {
                    calc.reset();
                  });
                }),
                calculatorButton('+/-', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.negative();
                  });
                }),
                calculatorButton('%', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.percentage();
                  });
                }),
                calculatorButton('/', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.div();
                  });
                }),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('7', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('7');
                  });
                }),
                calculatorButton('8', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('8');
                  });
                }),
                calculatorButton('9', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('9');
                  });
                }),
                calculatorButton('*', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.mul();
                  });
                }),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('4', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('4');
                  });
                }),
                calculatorButton('5', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('5');
                  });
                }),
                calculatorButton('6', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('6');
                  });
                }),
                calculatorButton('-', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.sub();
                  });
                }),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('1', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('1');
                  });
                }),
                calculatorButton('2', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('2');
                  });
                }),
                calculatorButton('3', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('3');
                  });
                }),
                calculatorButton('+', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.add();
                  });
                }),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calculatorButton('0', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.setNumber('0');
                  });
                }),
                calculatorButton('.', Colors.grey, Colors.black, () {
                  setState(() {
                    calc.decimal();
                  });
                }),
                RaisedButton(
                  onPressed: () {
                    calc.execute();
                  },
                  padding: EdgeInsets.fromLTRB(35, 22, 128, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 35, color: Colors.black),
                  ),
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

Widget calculatorButton(
    String btnText, Color btnColor, Color btnTextColor, onPressed) {
  return Container(
    child: RaisedButton(
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(fontSize: 30, color: btnTextColor),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: btnColor,
      padding: EdgeInsets.all(20),
    ),
  );
}
