import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SocailIconScreen extends StatelessWidget {
  final String ImageUrl;
  final double? height;
  final double? width;
  final Color? color;
  const SocailIconScreen(
      {required this.ImageUrl, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: color!)),
      child: Image(
        image: AssetImage(ImageUrl),
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
