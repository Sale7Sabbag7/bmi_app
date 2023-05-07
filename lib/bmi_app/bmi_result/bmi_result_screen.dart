import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BmiResultScreen extends StatelessWidget {

  bool male;
  // ignore: prefer_typing_uninitialized_variables
  var result;
  int age;

  BmiResultScreen({super.key, required this.male,required this.result,required this.age});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'Gender : ${male ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "Result : $result ",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "Age : $age",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
