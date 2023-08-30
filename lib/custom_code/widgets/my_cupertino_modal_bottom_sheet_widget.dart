// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart'; // Import Cupertino widgets

class MyCupertinoModalBottomSheetWidget extends StatefulWidget {
  const MyCupertinoModalBottomSheetWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _MyCupertinoModalBottomSheetWidgetState createState() =>
      _MyCupertinoModalBottomSheetWidgetState();
}

class _MyCupertinoModalBottomSheetWidgetState
    extends State<MyCupertinoModalBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Show the Cupertino Modal when the button is pressed
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoPopupSurface(
            child: Container(
              // Set the height and width of the modal (if provided)
              height: widget.height ?? 400,
              width: widget.width ?? 300,
              color: CupertinoColors.systemGrey6,
              child: Center(
                // Some content for your modal
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hey there, I'm a Cupertino modal!"),
                    CupertinoButton(
                      child: Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Text('Show Cupertino Modal'),
    );
  }
}
