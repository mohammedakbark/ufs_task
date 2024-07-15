
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufs_task/controller/controller.dart';
import 'package:ufs_task/utils/dimentions.dart';
import 'package:ufs_task/utils/style.dart';
import 'package:ufs_task/view/widgets/custom_textfield.dart';
import 'package:ufs_task/view/widgets/helper_wigets.dart';

class SingleRowField extends StatelessWidget {
  String title1;
  String title2;
  TextEditingController controller1;
  TextEditingController controller2;
  SingleRowField(
      {super.key,
      required this.title1,
      required this.title2,
      required this.controller1,
      required this.controller2});

  @override
  Widget build(BuildContext context) {
        final controller = Provider.of<ControllerProvider>(context, listen: false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            robotoText(title1,
                fontWeight: FontWeight.w700, size: Dimentions.fontSizeDefault),
            customeSpacer(context, height: .1),
            CustomeTextfield(
                width: .45, controller: controller1, validator: (value) {}),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(Dimentions.paddingSizeExtraSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              robotoText(title2,
                  fontWeight: FontWeight.w700,
                  size: Dimentions.fontSizeDefault),
              CustomeTextfield(
                  width: .45, controller: controller2, validator: (value) {}),
            ],
          ),
        ),
      ],
    );
  }
}
//expandebletile
