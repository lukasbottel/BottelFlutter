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
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(63.238),
                border: Border.all(
                  color: Color.fromRGBO(204, 204, 204, 0.4),
                  width: 1.581,
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFFF4F6FB), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Opacity(
                      opacity: 1 - _sliderValue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Swipe to confirm',
                            style: TextStyle(
                              color: Color(0xFF50C692),
                              fontSize: 57.184,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '-9',
                                style: TextStyle(
                                  color: Color(0xFF50C692),
                                  fontSize: 57.184,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.ac_unit) // Replace with your SVG icon
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    ),
                    child: Slider(
                      value: _sliderValue,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      activeColor: Color(0xFF50C692),
                      inactiveColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
