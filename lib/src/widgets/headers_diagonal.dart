import 'package:flutter/material.dart';

class HeadersDiagonal extends StatelessWidget {
  const HeadersDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
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
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
