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

  bool isDropDownEnabled = false;

  chanegDoprDowntate(
    value,
  ) {
    isDropDownEnabled = value;
    notifyListeners();
  }

  

  TextEditingController noteController = TextEditingController();

 

  
}

 
