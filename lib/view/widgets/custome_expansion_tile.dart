import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufs_task/controller/controller.dart';
import 'package:ufs_task/utils/color_resorces.dart';
import 'package:ufs_task/utils/const_images.dart';
import 'package:ufs_task/utils/dimentions.dart';
import 'package:ufs_task/utils/style.dart';

class CustomeExpansionTile extends StatefulWidget {
  final String title;
  final int index;
  List<Widget> childres = [];
  final Color backgroundColor;
  final Color collapsedBackgroundColor;
  CustomeExpansionTile(
      {super.key,
      required this.index,
      required this.title,
      required this.collapsedBackgroundColor,
      required this.backgroundColor,
      required this.childres});

  @override
  State<CustomeExpansionTile> createState() => _CustomeExpansionTileState();
}

class _CustomeExpansionTileState extends State<CustomeExpansionTile> {
  bool isButtonPressed = false;
  ExpansionTileController con = ExpansionTileController();
  @override
  Widget build(BuildContext context) {
    
      return SizedBox(
        width: Dimentions.w(context),
        child: ExpansionTile(
            controller: con,
            maintainState: true,
            onExpansionChanged: (value) {
              setState(() {
                isButtonPressed = value;
              });
            },
            trailing: Icon(
              isButtonPressed
                  ? ConstImages.dropUpIcon
                  : ConstImages.dropDownIcon,
              size: 30,
            ),
            tilePadding: const EdgeInsets.all(Dimentions.paddingSizeLarge),
            shape: ContinuousRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Dimentions.paddingSizeLarge)),
            collapsedShape: ContinuousRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Dimentions.paddingSizeLarge)),
            collapsedBackgroundColor: widget.collapsedBackgroundColor,
            backgroundColor: widget.backgroundColor,
            title: robotoText(widget.title,
                fontWeight: FontWeight.w500, size: Dimentions.fontSizeLarge),
            children: widget.childres),
      );
   
  }
}
