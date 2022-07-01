import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ImmmmWidget extends StatefulWidget {
  const ImmmmWidget({Key key}) : super(key: key);

  @override
  _ImmmmWidgetState createState() => _ImmmmWidgetState();
}

class _ImmmmWidgetState extends State<ImmmmWidget> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Icon.png',
      height: 190,
      fit: BoxFit.contain,
    );
  }
}
