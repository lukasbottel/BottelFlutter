// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';
import 'package:action_slider/action_slider.dart';
import 'dart:ui' as ui;

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    this.width,
    this.height,
    this.title, // Add this line
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? title; // Add this line

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = ActionSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Other sliders can go here

            // This is the third slider from the left, modified as per your requirements
            ActionSlider.custom(
              width: 300.0,
              controller: _controller,
              toggleWidth: 60.0,
              height: 60.0,
              backgroundColor: Colors.white,
              foregroundChild: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF50C692), // Changing the color to #50C692
                  borderRadius: BorderRadius.all(Radius.circular(
                      8)), // Making it square with rounded corners
                ),
                child: Center(
                  child: Text('Swipe to Confirm'), // Changing the text
                ),
              ),
              foregroundBuilder: (context, state, child) => child!,
              action: (controller) async {
                controller.loading(); // Starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); // Starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); // Resets the slider
              },
            ),

            // Other sliders can go here
          ],
        ),
      ),
    );
  }
}
