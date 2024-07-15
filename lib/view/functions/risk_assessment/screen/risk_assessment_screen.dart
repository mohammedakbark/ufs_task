import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ufs_task/controller/controller.dart';
import 'package:ufs_task/utils/color_resorces.dart';
import 'package:ufs_task/utils/const_images.dart';
import 'package:ufs_task/utils/dimentions.dart';
import 'package:ufs_task/utils/style.dart';
import 'package:ufs_task/view/functions/risk_assessment/widgets/single_option_tile.dart';
import 'package:ufs_task/view/functions/risk_assessment/widgets/single_row_field.dart';
import 'package:ufs_task/view/widgets/body_margin.dart';
import 'package:ufs_task/view/widgets/custom_button.dart';
import 'package:ufs_task/view/widgets/custom_textfield.dart';
import 'package:ufs_task/view/widgets/custome_expansion_tile.dart';
import 'package:ufs_task/view/widgets/helper_wigets.dart';

class RiskAssessmentScreen extends StatelessWidget {
  const RiskAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllerProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Image.asset(ConstImages.leadingLogImage)),
      ),
      body: BodyMargin(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customeSpacer(context),
            defaultText("Risk Assessment",
                fontWeight: FontWeight.w700, size: 18),
            customeSpacer(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //  Single expantionTile

                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
// building single  expantion tiles
                          return CustomeExpansionTile(
                            index: index,
                            title: controller.hazardTilesList[index],
                            backgroundColor: ColorResources.skyBlue,
                            collapsedBackgroundColor: ColorResources.skyBlue,
                            childres: [
                              Container(
                                color: ColorResources.white,
                                child: Column(
                                  children: [
                                 

                                    customeSpacer(context, height: .1),

                                    // # 1 Cleaning Product
                                    SingleRowTile(
                                      title: controller.innertitle[0],
                                    ),
                                    customeSpacer(context, height: .1),
                                    // # 2 Pesticide
                                    SingleRowTile(
                                        title: controller.innertitle[1]),

                                    customeSpacer(context, height: .1),
                                    // # 3 Asbestos
                                    SingleRowTile(
                                        title: controller.innertitle[2]),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => customeSpacer(
                              context,
                              height: .2,
                            ),
                        itemCount: controller.hazardTilesList.length),

//  textfield for Enter Notes

                    customeSpacer(context, height: .3),
                    CustomeTextfield(
                        maxLine: 4,
                        hintText: 'Enter Note',
                        controller: controller.noteController,
                        validator: (value) {})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          CustomButton(
            heigth: .05,
            width: .3,
            onTap: () {
              // drop the function for Skip
              log("Saved");
            },
            title: 'Skip',
            color: ColorResources.appThemeColorLight,
          ),
          Expanded(
            child: CustomButton(
              heigth: .05,
              width: 1,
              onTap: () {
                // drop the function for save
                log("Saved");
              },
              title: 'Save',
              color: ColorResources.appThemeColor,
            ),
          )
        ],
      ),
    );
  }
}
