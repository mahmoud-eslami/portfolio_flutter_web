import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/size_config/size_config.dart';

class ShapeOne extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = AppColors.bgColor.withOpacity(.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = SizeConfig.widthMultiplier;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.04, size.height * 0.70);
    path_0.lineTo(size.width * 0.04, size.height * 0.54);
    path_0.lineTo(size.width * 0.13, size.height * 0.38);
    path_0.lineTo(size.width * 0.22, size.height * 0.38);
    path_0.lineTo(size.width * 0.30, size.height * 0.54);
    path_0.lineTo(size.width * 0.30, size.height * 0.69);
    path_0.lineTo(size.width * 0.22, size.height * 0.84);
    path_0.lineTo(size.width * 0.13, size.height * 0.84);
    path_0.lineTo(size.width * 0.04, size.height * 0.69);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
