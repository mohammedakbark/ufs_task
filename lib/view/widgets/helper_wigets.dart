import 'package:flutter/material.dart';
import 'package:ufs_task/utils/dimentions.dart';

customeSpacer(context,{double ?height}) {
  return SizedBox(
    height: height!=null?Dimentions.h(context) * .05* height: Dimentions.h(context) * .05,
  );
}
