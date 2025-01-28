import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  final Color waveColor;

  WavePainter({required this.waveColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = waveColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final path = Path();

    path.lineTo(0, size.height * 0.6);

    var firstControlPoint = Offset(size.width * 0.3, size.height * 0.9);
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.6);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.2);
    var secondEndPoint = Offset(size.width, size.height * 0.3);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    // الانتقال إلى أعلى اليمين وإغلاق المسار
    path.lineTo(size.width, 0);
    path.close();

    // رسم الخط
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
