import 'package:flutter/material.dart';

class HeadersWavesInvertido extends StatelessWidget {
  const HeadersWavesInvertido({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavesInvertidoPainter(),
      ),
    );
  }
}

class _HeaderWavesInvertidoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: const Offset(250.0, 130.0),
      radius: 180,
    );
    const Gradient gradiente = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black,
          Colors.yellow,
          Colors.indigo,
        ],
        stops: [
          0.2,
          0.5,
          1.0,
        ]);
    final lapiz = Paint()..shader = gradiente.createShader(rect);
    final x = size.width;
    final y = size.height;

    //Propiedades del lapiz
    //lapiz.color = Colors.indigo;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;
    //Fin de las propiedades
    final path = Path();

    //Dibujar con el path y el lapiz

    // path.moveTo(x, y);
    // path.lineTo(x, y);
    // el moveTo es para mover la posicion del lapiz sin dubujar, el lineTo es para mover el lapiz dibujando
    path.moveTo(0, 0);
    path.lineTo(0, y * 0.3);
    path.quadraticBezierTo(x * 0.25, y * 0.35, x * 0.5, y * 0.3);
    path.quadraticBezierTo(x * 0.75, y * 0.25, x, y * 0.3);
    path.lineTo(x, 0);

    path.moveTo(0, y);
    path.lineTo(0, y * .7);
    path.quadraticBezierTo(x * 0.25, y * 0.75, x * 0.5, y * 0.7);
    path.quadraticBezierTo(x * 0.75, y * 0.65, x, y * 0.7);
    path.lineTo(x, y);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
