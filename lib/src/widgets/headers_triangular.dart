import 'package:flutter/material.dart';

class HeadersTriangular extends StatelessWidget {
  const HeadersTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
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
    final path = new Path();

    //Dibujar con el path y el lapiz

    // path.moveTo(x, y);
    // path.lineTo(x, y);
    // el moveTo es para mover la posicion del lapiz sin dubujar, el lineTo es para mover el lapiz dibujando
    path.lineTo(x, y);
    path.lineTo(x, 0);
    path.lineTo(0, 0);
    // path.lineTo(x, y);
    // path.lineTo(0, y);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
