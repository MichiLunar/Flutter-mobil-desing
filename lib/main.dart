//import 'package:desing_fonts/src/retos/cuadrado_animado_page.dart';
import 'package:flutter/material.dart';
import 'package:desing_fonts/src/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      home: CircularProgressPage(),
    );
  }
}
