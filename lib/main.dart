import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num1;
  int num2;

  String textToDisplay = "";
  String res;
  String operatortoperform;

  void btnclicked(String btnval) {
    if (btnval == "C") {
      textToDisplay = "";
      num1 = 0;
      num2 = 0;
      res = "";
    } else if (btnval == "+" ||
        btnval == "-" ||
        btnval == "x" ||
        btnval == "/") {
      num1 = int.parse(textToDisplay);
      res = "";
      operatortoperform = btnval;
    } else if (btnval == "=") {
      num2 = int.parse(textToDisplay);
      if (operatortoperform == "+") {
        res = (num1 + num2).toString();
      }
      if (operatortoperform == "-") {
        res = (num1 - num2).toString();
      }
      if (operatortoperform == "x") {
        res = (num1 * num2).toString();
      }
      if (operatortoperform == "/") {
        res = (num1 / num2).toString();
      }
    } else {
      res = int.parse(textToDisplay + btnval).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  Widget custombutton(String btnval) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(20.0),
        onPressed: () => btnclicked(btnval),
        child: Text(
          "$btnval",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white10,
                padding: EdgeInsets.all(9.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$textToDisplay",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              child: Container(
                color: Colors.amber[300],
              ),
              height: 10.0,

            ),
            Row(

              children: <Widget>[
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("9"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("8"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("7"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("+"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
              ],
            ),
            SizedBox(
              child: Container(
                color: Colors.amber[300],
              ),
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("6"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("5"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("4"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("-"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
              ],
            ),
            SizedBox(
              child: Container(
                color: Colors.amber[300],
              ),
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("3"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("2"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("1"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("x"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
              ],
            ),
            SizedBox(
              child: Container(
                color: Colors.amber[300],
              ),
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("C"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("0"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("="),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
                custombutton("/"),
                SizedBox(
                  child: Container(
                    color: Colors.amber[300],
                  ),
                  width: 5.0,
                  height: 65.0,
                ),
              ],
            ),

            SizedBox(
              child: Container(
                color: Colors.amber[300],
              ),
              height: 10.0,

            ),
          ],
        ),
      ),
    );
  }
}
