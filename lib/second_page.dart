import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int leftWing = 0;
  int rightWing = 0;
  int setLeftWing = 0;
  int setRighttWing = 0;

  void increaseDegreeLeft() {
    setState(() {
      leftWing++;
    });
  }

  void decreaseDegreeLeft() {
    setState(() {
      leftWing--;
    });
  }

  void increaseDegreeRight() {
    setState(() {
      rightWing = rightWing + 1;
    });
  }

  void decreaseDegreeRight() {
    setState(() {
      rightWing = rightWing - 1;
    });
  }

  void setDegree() {
    setState(() {
      setLeftWing = leftWing;
      setRighttWing = rightWing;
      leftWing = 0;
      rightWing = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('กำหนดองศา'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('กำหนดองศาปีกซ้าย'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          decreaseDegreeLeft();
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      Text(
                        leftWing.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            increaseDegreeLeft();
                          },
                          child: Icon(Icons.arrow_forward))
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text('กำหนดองศาปีกขวา'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          decreaseDegreeRight();
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      Text(
                        rightWing.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            increaseDegreeRight();
                          },
                          child: Icon(Icons.arrow_forward))
                    ],
                  ),
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  setDegree();
                },
              );
            },
            child: Text('ตกลง'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'องศาปีกซ้ายคือ $setLeftWing',
              ),
              Text('องศาปีกขวาคือ $setRighttWing'),
            ],
          )
        ],
      ),
    );
  }
}
