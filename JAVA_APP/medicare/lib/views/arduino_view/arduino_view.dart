import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicare/consts/consts.dart';
import 'package:medicare/res/components/custom_button.dart';
import 'package:medicare/views/arduino_view/arduino_value.dart';
import 'package:video_player/video_player.dart';

class ArduinoView extends StatefulWidget {
  ArduinoView() : super();
 
  final String title = "Video Demo";
 
  @override
  ArduinoViewState createState() => ArduinoViewState();
}
 
class ArduinoViewState extends State<ArduinoView> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
 
  @override
  void initState() {

    _controller = VideoPlayerController.asset("videos/1.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arduino Graph"),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
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



// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
 
