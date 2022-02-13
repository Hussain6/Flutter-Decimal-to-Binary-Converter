// ignore_for_file: file_names

import 'package:calculator/class/Businesslogic.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    TextEditingController input = TextEditingController();
    TextEditingController output = TextEditingController();
    binary b = binary();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            "Decimal To Binary",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: input,
                decoration:
                    const InputDecoration(hintText: "Enter Decimal Number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: output,
                enabled: false,
                decoration: const InputDecoration(hintText: "Result"),
              ),
            ),
            InkWell(
              onTap: () {
                output.text = b.calculate(input.text);
              },
              child: Container(
                width: size.width,
                height: size.height / 10,
                decoration: const BoxDecoration(color: Colors.amber),
                child: const Center(
                  child: Text("Calculate",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
