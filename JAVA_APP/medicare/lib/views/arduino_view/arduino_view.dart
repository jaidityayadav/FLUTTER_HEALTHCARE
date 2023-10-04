import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medicare/bookin_view/booking_view.dart';
import 'package:medicare/res/components/custom_button.dart';
import 'package:medicare/views/arduino_view/arduino_value.dart';

class ArduinoView extends StatefulWidget {
  @override
  _ArduinoViewState createState() => _ArduinoViewState();
}

class _ArduinoViewState extends State<ArduinoView> {
  final List<String> imagePaths = [
    'assets/body.png',
    'assets/ear.png',
    'assets/eye.png',
    'assets/heart.png',
    'assets/kidney.png',
    'assets/liver.png',
    'assets/lungs.png',
    'assets/stomach.png',
  ];

  late String selectedImagePath;

  int randomNumber = 0;

  @override
  void initState1() {
    super.initState();
    generateRandomNumber();
  }

  void generateRandomNumber() {
    final random = Random();
    setState(() {
      // Generate a random number between 70 and 90 (inclusive)
      randomNumber = random.nextInt(21) + 70;
    });
  }





  @override
  void initState() {
    super.initState();
    // Select a random image path when the screen is initialized
    selectRandomImage();
  }

  void selectRandomImage() {
    final random = Random();
    final randomIndex = random.nextInt(imagePaths.length);
    setState(() {
      selectedImagePath = imagePaths[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arduino graph Viewer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (selectedImagePath != null)
              Image.asset(
                selectedImagePath,
                fit: BoxFit.cover,
              )
            
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(buttonText: "Want to See Heart Rate and SPO2 Values?",
        onTap: () {
          Get.to(()=> ArduinoValue());
          },),
      ),

    );
  }
}