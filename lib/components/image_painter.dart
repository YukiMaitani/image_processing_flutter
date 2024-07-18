import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';

class ImagePainter extends CustomPainter {
  ImagePainter({required this.shader, required this.image});

  final FragmentShader shader;
  final ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);
    shader.setImageSampler(0, image);
    paint.shader = shader;
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
