import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int height;
  final int weight;
  final bool isMale;
  final int age;
  ResultsScreen(
      {required this.height,
      required this.weight,
      required this.age,
      required this.isMale});

  double calculateBMI() {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  String determineBMICategory(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }

  @override
  Widget build(BuildContext context) {
    double bmi = calculateBMI();
    String bmiCategory = determineBMICategory(bmi);
    String Gender = isMale ? "Male" : "Female";

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 1, 71),
      appBar: AppBar(
        title: Text('BMI Results',
            style: TextStyle(fontSize: 30, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 1, 71),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is: ${bmi.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'BMI Category: $bmiCategory',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Your Age is: $age',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Your Gender is: $Gender',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
