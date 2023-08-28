// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_svg/svg.dart';

import 'dart:math';
import 'package:action_slider/action_slider.dart';
import 'dart:ui' as ui;

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    this.width,
    this.height,
    this.title,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = ActionSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionSlider.standard(
          width: 300.0,
          backgroundColor: Color(0xFFFFFFFF), // Hex color for background
          toggleColor: Color(0xFF50C692), // Hex color for the toggle/slider
          icon: const Icon(Icons.add),
          action: (controller) async {
            controller.loading(); // Starts loading animation
            await Future.delayed(const Duration(seconds: 3));
            controller.success(); // Starts success animation
            await Future.delayed(const Duration(seconds: 1));
            controller.reset(); // Resets the slider
          },
          child: Text(
            'Slide to confirm',
            style: TextStyle(color: Color(0xFFB3BFD1)), // Hex color for text
          ),
        ),
      ),
    );
  }
}
