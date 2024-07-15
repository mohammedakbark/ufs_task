import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ufs_task/controller/controller.dart';
import 'package:ufs_task/utils/color_resorces.dart';
import 'package:ufs_task/utils/dimentions.dart';
import 'package:ufs_task/utils/style.dart';
import 'package:ufs_task/view/functions/risk_assessment/widgets/single_row_field.dart';
import 'package:ufs_task/view/widgets/custome_expansion_tile.dart';
import 'package:ufs_task/view/widgets/helper_wigets.dart';

class SingleRowTile extends StatelessWidget {
  final String title;
  SingleRowTile({
    required this.title,
    super.key,
  });
  TextEditingController riskDescriptionController = TextEditingController();
  TextEditingController intiaScoreController = TextEditingController();
  TextEditingController goController = TextEditingController();
  TextEditingController mitigationMeasuresController = TextEditingController();
  TextEditingController finalScoreController = TextEditingController();
  TextEditingController noGoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllerProvider>(context, listen: false);

    return CustomeExpansionTile(
      index: 0,
      title: title,
      backgroundColor: ColorResources.grey,
      collapsedBackgroundColor: ColorResources.grey,
      childres: [
        Container(
          color: ColorResources.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customeSpacer(context, height: .3),
              SingleRowField(
                controller1: riskDescriptionController,
                title1: 'Risk Description',
                controller2: intiaScoreController,
                title2: 'Initial Score',
              ),
              customeSpacer(context, height: .3),
              SingleRowField(
                controller1: goController,
                title1: 'Go',
                controller2: mitigationMeasuresController,
                title2: 'Mitigation Measure',
              ),
              customeSpacer(context, height: .3),
              SingleRowField(
                controller1: finalScoreController,
                title1: 'Final Score',
                controller2: noGoController,
                title2: 'No Go',
              ),
              customeSpacer(context, height: .3),
              robotoText('Equipment List',
                  fontWeight: FontWeight.w700,
                  size: Dimentions.fontSizeDefault),
              customeSpacer(context, height: .1),
              SizedBox(
                width: Dimentions.w(context) * .45,
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        hintStyle: robotoStyle(color: ColorResources.balck),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                Dimentions.radiusSizeSmall),
                            borderSide: const BorderSide(
                                width: .5, color: ColorResources.grey))),
                    items: List.generate(
                        3,
                        (index) => DropdownMenuItem(
                            value: index, child: robotoText('Sample Value'))),
                    onChanged: (value) {}),
              ),
              customeSpacer(context, height: .3),
            ],
          ),
        )
      ],
    );
  }
}
