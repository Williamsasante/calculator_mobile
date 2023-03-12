import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "0";

  String _output = "0";

  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  operation(String btntext) {
    if (btntext == "C") {
      _output = "0";
      num2 = 0.0;
      num1 = 0.0;
      operand = "";
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "x" ||
        btntext == "/") {
      num1 = double.parse(output);
      operand = btntext;
      _output = "0";
    } else if (btntext == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
        if (operand == "-") {
          _output = (num1 - num2).toString();
          if (operand == "x") {
            _output = (num1 * num2).toString();
            if (operand == "/") {
              _output = (num1 / num2).toString();
            }
            num1 = 0.0;
            num2 = 0.0;
            operand = "";
          } else {
            _output = _output + btntext;
          }
          setState(() {
            output = double.parse(_output).toStringAsFixed(2);
          });
        }
      }
    }
  }

  Widget button(String btntext) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60), color: Colors.red),
      child: RawMaterialButton(
        onPressed: () {
          operation(btntext);
        },
        shape: Border.all(color: Colors.black, width: 2),
        fillColor: Color.fromARGB(255, 56, 56, 56),
        padding: EdgeInsets.all(30.0),
        splashColor: Colors.white,
        child: Text(
          "$btntext",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }

  // Widget button1(String btntext) {
  //   return Expanded(
  //     child: RawMaterialButton(
  //       onPressed: () {
  //         operation(btntext);
  //       },
  //       shape: Border.all(color: Colors.black, width: 2),
  //       fillColor: Color.fromARGB(255, 255, 158, 40),
  //       padding: EdgeInsets.all(30.0),
  //       splashColor: Colors.white,
  //       child: Text(
  //         "$btntext",
  //         style: TextStyle(
  //           color: Color.fromARGB(255, 255, 255, 255),
  //           fontSize: 40,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 44, 44),
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Color.fromARGB(255, 43, 43, 43),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  color: Color.fromARGB(255, 76, 76, 76),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    "$output",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
              Row(
                children: [
                  button("9"),
                  SizedBox(
                    width: 5,
                  ),
                  button("8"),
                  SizedBox(
                    width: 5,
                  ),
                  button("7"),
                  SizedBox(
                    width: 5,
                  ),
                  button("/"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  button("6"),
                  SizedBox(
                    width: 5,
                  ),
                  button("5"),
                  SizedBox(
                    width: 5,
                  ),
                  button("4"),
                  SizedBox(
                    width: 5,
                  ),
                  button("x"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 5,
                  ),
                  button("2"),
                  SizedBox(
                    width: 5,
                  ),
                  button("1"),
                  SizedBox(
                    width: 5,
                  ),
                  button("+"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  button("0"),
                  SizedBox(
                    width: 5,
                  ),
                  button("-"),
                  SizedBox(
                    width: 5,
                  ),
                  button("="),
                  SizedBox(
                    width: 5,
                  ),
                  button("C"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
