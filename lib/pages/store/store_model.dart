import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/okay/okay_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoreModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for okay component.
  late OkayModel okayModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    okayModel = createModel(context, () => OkayModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    okayModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
