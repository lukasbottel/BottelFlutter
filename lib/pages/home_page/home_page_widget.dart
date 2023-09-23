import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/nav_bar1/nav_bar1_widget.dart';
import '/pages/scan/scan_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            FlutterFlowGoogleMap(
              controller: _model.googleMapsController,
              onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
              initialLocation: _model.googleMapsCenter ??=
                  LatLng(13.106061, -59.613158),
              markerColor: GoogleMarkerColor.violet,
              mapType: MapType.normal,
              style: GoogleMapStyle.silver,
              initialZoom: 16.0,
              allowInteraction: true,
              allowZoom: true,
              showZoomControls: false,
              showLocation: true,
              showCompass: false,
              showMapToolbar: false,
              showTraffic: false,
              centerMapOnMarkerTap: false,
            ),
            Stack(
              children: [
                wrapWithModel(
                  model: _model.navBar1Model,
                  updateCallback: () => setState(() {}),
                  child: NavBar1Widget(),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.06, 0.96),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ScanWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Container(
                            width: 75.0,
                            height: 75.0,
                            child: Stack(
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35.0),
                                  ),
                                  child: Container(
                                    width: 75.0,
                                    height: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF54DC9E),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 12.0,
                                          color: Color(0x2B30D28B),
                                          offset: Offset(0.0, 2.0),
                                          spreadRadius: 5.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(35.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75.0,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 3.5, 0.0, 0.0),
                                    child: Icon(
                                      FFIcons.kscanhome2,
                                      color: Color(0xFFFEFEFE),
                                      size: 27.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
