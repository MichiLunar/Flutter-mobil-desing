import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final double porcentaje;
  const RadialProgress({
    Key? key,
    required this.porcentaje,
  }) : super(key: key);

  @override
  State<RadialProgress> createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('${widget.porcentaje}'),
      ),
    );
  }
}
