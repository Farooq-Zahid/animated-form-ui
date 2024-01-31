import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BluredBox extends StatelessWidget {
  final Widget child;
  const BluredBox({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Colors.grey,
        ),
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: SizedBox(
            child: child,
          ),
        ),
      ),
    );
  }
}
