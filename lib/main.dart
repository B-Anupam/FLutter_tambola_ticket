import 'package:flutter/material.dart';
import 'dart:math';

Random rng = new Random();
void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget buildcont(blockval) {
    if (blockval != 0) {
      return Container(
        width: 40,
        height: 30,
        decoration: BoxDecoration(color: Colors.blue[700]),
        child: Center(
            child: Text(
          '$blockval',
          style: TextStyle(color: Colors.white),
        )),
      );
    } else {
      return Container(
        width: 40,
        height: 30,
        decoration: BoxDecoration(color: Colors.blue[700]),
      );
    }
  }

  Widget arrange() {
    var arr = new List(9);
    int number;
    arr = [0, 0, 0, 0, 0, 0, 0, 0, 0];
    var f = new List(5);
    f[0] = 1 + rng.nextInt(3 - 1);
    f[1] = 3 + rng.nextInt(4 - 3);
    f[2] = 4 + rng.nextInt(6 - 4);
    f[3] = 6 + rng.nextInt(8 - 6);
    f[4] = 8 + rng.nextInt(9 - 7);
    for (int i = 0; i < 5; i++) {
      if (f[i] == 1) {
        number = 1 + rng.nextInt(10 - 1);
        arr[0] = number;
        // n = arr[1];
      } else if (f[i] == 2) {
        number = 10 + rng.nextInt(20 - 10);
        arr[1] = number;
        // n = arr[2];
      } else if (f[i] == 3) {
        number = 20 + rng.nextInt(30 - 20);
        arr[2] = number;
        // n = arr[3];
      } else if (f[i] == 4) {
        number = 30 + rng.nextInt(40 - 30);
        arr[3] = number;
        // n = arr[4];
      } else if (f[i] == 5) {
        number = 40 + rng.nextInt(50 - 40);
        arr[4] = number;
        // n = arr[5];
      } else if (f[i] == 6) {
        number = 50 + rng.nextInt(60 - 50);
        arr[5] = number;
        // n = arr[6];
      } else if (f[i] == 7) {
        number = 60 + rng.nextInt(70 - 60);
        arr[6] = number;
        // n = arr[7];
      } else if (f[i] == 8) {
        number = 70 + rng.nextInt(80 - 70);
        arr[7] = number;
        // n = arr[8];
      } else if (f[i] == 9) {
        number = 90 + rng.nextInt(90 - 80);
        arr[8] = number;
        // n = arr[9];
      }
    }
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildcont(arr[0]),
          buildcont(arr[1]),
          buildcont(arr[2]),
          buildcont(arr[3]),
          buildcont(arr[4]),
          buildcont(arr[5]),
          buildcont(arr[6]),
          buildcont(arr[7]),
          buildcont(arr[8]),
        ],
      ),
    );

    // for (int i = 0; i < 9; i++) {
    //   print(arr[i]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tambola Ticket'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [arrange(), arrange(), arrange()],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [arrange(), arrange(), arrange()],
            ),
            SizedBox(height: 20),
            Column(
              children: [arrange(), arrange(), arrange()],
            ),
            SizedBox(height: 20),
            Column(
              children: [arrange(), arrange(), arrange()],
            )
          ]),
        ));
  }
}
