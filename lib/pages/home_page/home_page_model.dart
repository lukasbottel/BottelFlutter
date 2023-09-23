import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/okay/okay_widget.dart';
import '/pages/scan/scan_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for ok.
  late OkayModel okModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    okModel = createModel(context, () => OkayModel());
  }

  void dispose() {
    unfocusNode.dispose();
    okModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
