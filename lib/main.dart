import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ufs_task/controller/controller.dart';
import 'package:ufs_task/view/functions/risk_assessment/screen/risk_assessment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ControllerProvider>(
            create: (_) => ControllerProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: RiskAssessmentScreen()),
    );
  }
}
