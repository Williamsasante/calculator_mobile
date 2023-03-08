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
  Widget button(String btntext) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {},
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
    );
  }

  Widget button1(String btntext) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {},
        shape: Border.all(color: Colors.black, width: 2),
        fillColor: Color.fromARGB(255, 255, 140, 0),
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
    );
  }

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
                  button1("/"),
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
                  button1("x"),
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
                  button1("+"),
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
                  button1("-"),
                  SizedBox(
                    width: 5,
                  ),
                  button1("="),
                  SizedBox(
                    width: 5,
                  ),
                  button1("C"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
