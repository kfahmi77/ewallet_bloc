import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
