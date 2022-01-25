import 'package:exam_test/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int eatFood = 0;
  int useFood = 0;
  double powerUp = 0.0;
  double usePower = 0.0;

  void powerUpFunction() {
    setState(() {
      powerUp = useFood * 2;
      useFood = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            eatFood.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      eatFood++;
                    },
                  );
                },
                child: const Text('1'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      eatFood = eatFood + 2;
                    },
                  );
                },
                child: const Text('2'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      eatFood = eatFood + 3;
                    },
                  );
                },
                child: const Text('3'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      useFood = eatFood;
                      eatFood = 0;
                    });
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.check),
                      (Text('ตกลง')),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      eatFood = useFood;
                      useFood = 0;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.close),
                      Text('ยกเลิก'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            useFood.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              powerUpFunction();
            },
            child: const Text('เพิ่มพลัง'),
          ),
          Text(
            powerUp.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                usePower = powerUp / 2;
                powerUp = 0.0;
              });
            },
            child: const Text('ใช้พลัง'),
          ),
          Text(
            usePower.toString(),
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
            child: const Text('ไปหน้าถัดไป'),
          )
        ],
      ),
    );
  }
}
