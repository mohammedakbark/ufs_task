import 'package:flutter/material.dart';
import 'package:ufs_task/utils/dimentions.dart';

class BodyMargin extends StatelessWidget {
  Widget child;
  BodyMargin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimentions.paddingSizeExtraLarge),
      child: child,
    );
  }
}
