import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/employee_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
         
          theme: ThemeData(
    
            primarySwatch: Colors.blue,
          ),
          home: const EmployeeListView(),
        );
      }
    );
  }
}
