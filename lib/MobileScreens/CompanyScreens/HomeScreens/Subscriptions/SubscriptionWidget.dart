import 'package:flutter/material.dart';

class SubscriptionWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Widget child;

  SubscriptionWidget({
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.borderRadius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
