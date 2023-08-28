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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? "Default Title"), // Corrected line
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DefaultTextStyle.merge(
              style: const TextStyle(color: Colors.white),
              child: ActionSlider.dual(
                backgroundBorderRadius: BorderRadius.circular(10.0),
                foregroundBorderRadius: BorderRadius.circular(10.0),
                width: 300.0,
                backgroundColor: Colors.black,
                startChild: const Text('Start'),
                endChild: const Text('End'),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: Transform.rotate(
                      angle: 0.5 * pi,
                      child: const Icon(Icons.unfold_more_rounded, size: 28.0)),
                ),
                startAction: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success animation
                  await Future.delayed(const Duration(seconds: 1));
                  controller.reset(); //resets the slider
                },
                endAction: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success animation
                  await Future.delayed(const Duration(seconds: 1));
                  controller.reset(); //resets the slider
                },
              ),
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              sliderBehavior: SliderBehavior.stretch,
              width: 300.0,
              backgroundColor: Colors.white,
              toggleColor: Colors.lightGreenAccent,
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
              child: const Text('Slide to confirm'),
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              width: 300.0,
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
              direction:
                  ui.TextDirection.rtl, // Using TextDirection from dart:ui

              child: const Text('Slide to confirm'),
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              rolling: true,
              width: 300.0,
              backgroundColor: Colors.black,
              reverseSlideAnimationCurve: Curves.easeInOut,
              reverseSlideAnimationDuration: const Duration(milliseconds: 500),
              toggleColor: Colors.purpleAccent,
              icon: const Icon(Icons.add),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
              child: const Text('Rolling slider',
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 24.0),
            ActionSlider.standard(
              sliderBehavior: SliderBehavior.stretch,
              rolling: true,
              width: 300.0,
              backgroundColor: Colors.white,
              toggleColor: Colors.amber,
              iconAlignment: Alignment.centerRight,
              loadingIcon: SizedBox(
                  width: 55,
                  child: Center(
                      child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: CircularProgressIndicator(
                        strokeWidth: 2.0, color: theme.iconTheme.color),
                  ))),
              successIcon: const SizedBox(
                  width: 55, child: Center(child: Icon(Icons.check_rounded))),
              icon: const SizedBox(
                  width: 55, child: Center(child: Icon(Icons.refresh_rounded))),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
              child: const Text('Swipe right'),
            ),
            const SizedBox(height: 24.0),
            ActionSlider.custom(
              sliderBehavior: SliderBehavior.stretch,
              width: 300.0,
              controller: _controller,
              height: 60.0,
              toggleWidth: 60.0,
              toggleMargin: EdgeInsets.zero,
              backgroundColor: Colors.green,
              foregroundChild: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.check_rounded, color: Colors.white)),
              foregroundBuilder: (context, state, child) => child!,
              outerBackgroundBuilder: (context, state, child) => Card(
                margin: EdgeInsets.zero,
                color: Color.lerp(Colors.red, Colors.green, state.position),
                child: Center(
                    child: Text(state.position.toStringAsFixed(2),
                        style: theme.textTheme.titleMedium)),
              ),
              backgroundBorderRadius: BorderRadius.circular(5.0),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
            const SizedBox(height: 24.0),
            ActionSlider.custom(
              toggleMargin: EdgeInsets.zero,
              width: 300.0,
              controller: _controller,
              toggleWidth: 60.0,
              height: 60.0,
              backgroundColor: Colors.green,
              foregroundChild: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: const Icon(Icons.check_rounded, color: Colors.white)),
              foregroundBuilder: (context, state, child) => child!,
              backgroundChild: Center(
                child: Text('Highly Customizable :)',
                    style: theme.textTheme.titleMedium),
              ),
              backgroundBuilder: (context, state, child) => ClipRect(
                  child: OverflowBox(
                      maxWidth: state.standardSize.width,
                      maxHeight: state.toggleSize.height,
                      minWidth: state.standardSize.width,
                      minHeight: state.toggleSize.height,
                      child: child!)),
              backgroundBorderRadius: BorderRadius.circular(5.0),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 3));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
            ),
          ],
        ),
      ),
    );
  }
}
