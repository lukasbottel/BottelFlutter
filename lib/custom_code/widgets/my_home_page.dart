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
    this.title, // Add this line
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? title; // Add this line

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Slider')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background Casing
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.4),
                  width: 1.5,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFF4F6FB), Colors.transparent],
                ),
              ),
            ),
            // Background Text and Icon
            Opacity(
              opacity:
                  1 - sliderValue, // This line sets the opacity dynamically
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Swipe to confirm',
                    style: TextStyle(
                      color: Color(0xFF50C692),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '-9',
                        style: TextStyle(
                          color: Color(0xFF50C692),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/bottlecoin_icon.svg', // Replace with your actual SVG asset path
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Slider
            SliderTheme(
              data: SliderThemeData(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              ),
              child: Slider(
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
                activeColor: Color(0xFF50C692),
                inactiveColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
