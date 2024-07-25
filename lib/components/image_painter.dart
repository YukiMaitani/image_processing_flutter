import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_processing_flutter/models/effect.dart';

class ImagePainter extends CustomPainter {
  ImagePainter(
      {required this.shader,
      required this.image,
      this.brightness = 0,
      required this.effect});

  final FragmentShader shader;
  final ui.Image image;
  final double brightness;
  final Effect effect;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);
    shader.setFloat(2, brightness);
    shader.setFloat(3, effect.rgb.red);
    shader.setFloat(4, effect.rgb.green);
    shader.setFloat(5, effect.rgb.blue);
    shader.setImageSampler(0, image);
    paint.shader = shader;
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
