import 'package:flutter/material.dart';
import 'package:mobile/componentes/ErrorContainer.dart';
import 'package:mobile/componentes/LoadingContainer.dart';
import 'package:mobile/componentes/NotFoundContainer.dart';
import 'package:mobile/controllers/HomeController.dart';
import 'package:mobile/models/Employee.dart';
import 'package:mobile/views/home/componentes/EmployeesList.dart';

class BuildEmployeesList extends StatelessWidget {
  final HomeController controller;
  const BuildEmployeesList({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.query,
      builder: (context, value, child) => FutureBuilder(
        future: controller.listEmployees(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingContainer();
          }
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            var data = snapshot.data as List<Employee>;
            if(data.isEmpty) return const NotFoundContainer();
            return EmployeesList(employees: data);
          }
          
          return const ErrorContainer();
        },
      ),
    );
  }
}