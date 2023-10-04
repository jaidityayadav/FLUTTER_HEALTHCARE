import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicare/res/components/custom_button.dart';
import 'package:medicare/views/category_view/category_view.dart';
import 'package:medicare/views/home_view/home.dart';

class ArduinoValue extends StatefulWidget {
  @override
  _ArduinoValueState createState() => _ArduinoValueState();
}

class _ArduinoValueState extends State<ArduinoValue> {
  int randomNumber = 0;
  int randomvalue =0;

  @override
  void initState() {
    super.initState();
    generateRandomNumber();
  }

  void generateRandomNumber() {
    final random = Random();
    setState(() {
      randomNumber = random.nextInt(21) + 70;
      randomvalue = random.nextInt(5) + 95;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Captured Values'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Heart Rate: $randomNumber',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'SPO2: $randomvalue',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home_filled),
              onPressed: () {
                Get.to(()=> Home());
              },
            ),
            IconButton(
              icon: Icon(Icons.category_rounded),
              onPressed: () {
                Get.to(()=> CategoryView());
              },
            ),
          ],
        ),
      ),
    );
  }
}