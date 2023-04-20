import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/app_employee_view.dart';

class AppRouter {

  static MaterialPageRoute addEmployee() {
    return generateMaterialRoute(
      page:const AddEmployeeView(),
    );
  }




  static MaterialPageRoute generateMaterialRoute({required Widget page}) =>
      MaterialPageRoute(
        builder: (_) => page,
      );
}
