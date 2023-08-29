// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart'; // <-- Add this import for SystemUiOverlayStyle
import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CupBottomSheet extends StatelessWidget {
  // <-- New name here
  final double width;
  final double height;

  CupBottomSheet({
    // <-- New name here
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final topSafeAreaPadding = MediaQuery.of(context).padding.top;
    final topPadding = 10.0 + topSafeAreaPadding;

    final shadow =
        BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 5);
    final backgroundColor = Colors.white;
    final topRadius = Radius.circular(12.0);
    final overlayStyle = SystemUiOverlayStyle.light;

    Widget bottomSheetContainer = Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: topRadius),
        child: Container(
          decoration:
              BoxDecoration(color: backgroundColor, boxShadow: [shadow]),
          width: width,
          height: height,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: CupertinoUserInterfaceLevel(
              data: CupertinoUserInterfaceLevelData.elevated,
              child: Center(child: Text('Hello, World!')), // Hard-coded child
            ),
          ),
        ),
      ),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle,
      child: bottomSheetContainer,
    );
  }
}
