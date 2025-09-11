import 'dart:math';
import 'package:flutter/material.dart';

class SebhaPainter extends CustomPainter {
  final double beadRadius;

  SebhaPainter({required this.beadRadius});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2.5;
    int beads = 33;
    for (int i = 0; i < beads; i++) {
      final angle = (2 * pi / beads) * i;
      final x = center.dx + cos(angle) * radius * 1.1;
      final y = center.dy + sin(angle) * radius * 1.1;
      final beadCenter = Offset(x, y);
      final paint = Paint()
        ..shader = RadialGradient(
          colors: [
            Color(0xFFFFCF7C),
            Color(0xFFDBAC5B),
            Color(0xFFB6893A),
            Color(0xFF77623D),
          ],
          radius: 0.7,
        ).createShader(Rect.fromCircle(center: beadCenter, radius: 15));
      canvas.drawCircle(beadCenter, beadRadius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
