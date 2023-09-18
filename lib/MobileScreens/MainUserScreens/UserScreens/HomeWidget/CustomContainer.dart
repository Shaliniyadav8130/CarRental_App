import 'package:flutter/material.dart';

class CustomContainers extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final double borderRadius;
  final Color? borderColor;
  final Widget? child;

  CustomContainers({
    this.width,
    this.height,
    this.color,
    required this.borderRadius,
    this.borderColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null
            ? Border.all(
          color: borderColor!,
          width: 1.0, // You can adjust the border width as needed
        )
            : null,
      ),
      child: child,
    );
  }
}
