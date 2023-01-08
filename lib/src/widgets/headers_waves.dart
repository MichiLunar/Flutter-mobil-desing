import 'package:flutter/material.dart';

class HeadersWaves extends StatelessWidget {
  const HeadersWaves({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    final x = size.width;
    final y = size.height;

    //Propiedades del lapiz
    lapiz.color = Colors.indigo;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;
    //Fin de las propiedades
    final path = Path();

    //Dibujar con el path y el lapiz

    // path.moveTo(x, y);
    // path.lineTo(x, y);
    // el moveTo es para mover la posicion del lapiz sin dubujar, el lineTo es para mover el lapiz dibujando
    path.lineTo(0, y * 0.3);
    //path.quadraticBezierTo(x * 0.5, y * 0.15, x, y * 0.25);
    path.quadraticBezierTo(x * 0.25, y * 0.35, x * 0.5, y * 0.3);
    path.quadraticBezierTo(x * 0.75, y * 0.25, x, y * 0.3);
    path.lineTo(x, 0);
    //path.lineTo(x, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
