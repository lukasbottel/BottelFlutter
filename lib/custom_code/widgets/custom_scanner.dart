// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class CustomScanner extends StatefulWidget {
  const CustomScanner({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CustomScannerState createState() => _CustomScannerState();
}

class _CustomScannerState extends State<CustomScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QRCodeDartScan'),
      ),
      body: Center(
        child: QRCodeDartScanView(
          onCapture: (Result result) {
            // Handle the captured result
            print('QR Code Text: ${result.text}');
          },
        ),
      ),
    );
  }
}
