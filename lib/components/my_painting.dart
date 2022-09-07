import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Mypainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 243, 33, 36)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.radial(
      ui.Offset(size.width, size.height / 5),
      750,
      [Colors.red, Colors.orange],
    );

    Path path0 = Path();
    path0.moveTo(size.width * 0.0025000, size.height * 0.0020000);
    path0.lineTo(size.width * 0.9950000, size.height * 0.0036000);
    path0.quadraticBezierTo(size.width * 0.9472500, size.height * 0.0593000,
        size.width * 0.5830000, size.height * 0.0592000);
    path0.quadraticBezierTo(size.width * 0.0174375, size.height * 0.0614000,
        size.width * 0.0037500, size.height * 0.5880000);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint1.shader = ui.Gradient.radial(
      ui.Offset(size.width / 2.5, size.height / 1.2),
      750,
      [Colors.blue, Colors.white],
    );

    Path path1 = Path();
    path1.moveTo(size.width, size.height);
    path1.lineTo(size.width * 0.0805714, size.height);
    path1.quadraticBezierTo(size.width * 0.0365714, size.height * 0.9975000,
        size.width * 0.6771429, size.height * 0.9320000);
    path1.quadraticBezierTo(size.width * 1.0044286, size.height * 0.8887500,
        size.width, size.height * 0.5090000);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
