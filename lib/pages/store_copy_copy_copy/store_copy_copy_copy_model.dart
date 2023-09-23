import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/okay/okay_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoreCopyCopyCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for okay component.
  late OkayModel okayModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    okayModel = createModel(context, () => OkayModel());
  }

  void dispose() {
    unfocusNode.dispose();
    okayModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
