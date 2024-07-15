import 'dart:developer';

import 'package:flutter/material.dart';

class ControllerProvider with ChangeNotifier {
  List<String> hazardTilesList = [
    'Physical Hazard',
    'Safety Hazard',
    'Chemical Hazard',
    'Biological Hazard',
    'Ergonomics Hazard'
  ];

  List<String> innertitle = ['Cleaning Products', 'Pesticide', 'Asbestos'];

  TextEditingController noteController = TextEditingController();
}
