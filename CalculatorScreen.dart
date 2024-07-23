import 'package:flutter/material.dart';
import 'ResultsScreen.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool male = true;
  int height = 120;
  int weight = 50;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 1, 71),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 0, 1, 71),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            male = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: male
                                ? Colors.blue
                                : Color.fromARGB(41, 249, 246, 246),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            male = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: male
                                ? Color.fromARGB(41, 249, 246, 246)
                                : Colors.pink,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 100,
                                color: Colors.white,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(41, 249, 246, 246),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "$height cm",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Slider(
                      min: 0,
                      max: 230,
                      activeColor: Colors.red,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(41, 249, 246, 246),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 0) {
                                          weight--;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                SizedBox(width: 20),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Color.fromARGB(236, 249, 246, 246),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(41, 249, 246, 246),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (age > 0) {
                                          age--;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ),
                                SizedBox(width: 20),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
              height: 100,
              minWidth: double.infinity,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsScreen(
                        height: height, weight: weight, isMale: male, age: age),
                  ),
                );
              },
              child: Text(
                "Calculate BMI",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
