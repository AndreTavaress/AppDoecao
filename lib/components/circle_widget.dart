import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleWidget extends StatefulWidget {
  const CircleWidget({Key key}) : super(key: key);

  @override
  _CircleWidgetState createState() => _CircleWidgetState();
}

class _CircleWidgetState extends State<CircleWidget> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://picsum.photos/seed/951/600',
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}
