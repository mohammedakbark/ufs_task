import 'package:flutter/material.dart';
import 'package:ufs_task/utils/color_resorces.dart';
import 'package:ufs_task/utils/dimentions.dart';
import 'package:ufs_task/utils/style.dart';

class CustomeTextfield extends StatelessWidget {
  String? hintText;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType? keybordType;
  double? width;
  int? maxLine;

  CustomeTextfield(
      {super.key,
      this.width,
      this.maxLine,
      required this.controller,
      this.hintText,
      this.keybordType,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: Dimentions.h(context) * .05,
      width: width != null
          ? Dimentions.w(context) * width!
          : Dimentions.w(context),
      child: TextFormField(
        maxLines: maxLine ?? 1,

        keyboardType: keybordType ?? TextInputType.name,

        textCapitalization: TextCapitalization.words,
        controller: controller,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            hintText: hintText ?? '',
            hintStyle: robotoStyle(color: ColorResources.balck),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimentions.radiusSizeSmall),
                borderSide:
                    const BorderSide(width: .5, color: ColorResources.grey))),
      ),
    );
  }
}
