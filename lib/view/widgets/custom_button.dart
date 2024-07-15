import 'package:flutter/material.dart';
import 'package:ufs_task/utils/dimentions.dart';
import 'package:ufs_task/utils/style.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final double heigth;
  final double width;
  final String title;
  void Function() onTap;
  CustomButton(
      {super.key,
      required this.heigth,
      required this.width,
      required this.color,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: Dimentions.w(context) * width,
        height: Dimentions.h(context) * heigth,
        decoration: BoxDecoration(
          color: color,
        ),
        child: robotoText(title,
            fontWeight: FontWeight.bold, size: Dimentions.fontSizeExtraLarge),
      ),
    );
  }
}
