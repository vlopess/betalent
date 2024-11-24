import 'package:flutter/material.dart';
import 'package:mobile/models/Employee.dart';
import 'package:mobile/routes/HomeRoute.dart';

class HomeController extends ChangeNotifier {
  final TextEditingController textController = TextEditingController();
  final HomeRoute _route = HomeRoute();
  late List<Employee> employees;
  final ValueNotifier<String> query = ValueNotifier('');

  HomeController(){
    textController.addListener(listener);
  }


  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Future<List<Employee>> listEmployees() async {
    if(query.value.isNotEmpty) return search();
    employees = await _route.listEmployees();
    return employees;
  }

  List<Employee> search() {
    return employees.where((employee) 
    => employee.name.toLowerCase().startsWith(query.value.toLowerCase()) || 
    employee.job.toLowerCase().startsWith(query.value.toLowerCase())||
    employee.phone.toLowerCase().startsWith(query.value.toLowerCase())
    ).toList();
  }
  

  void listener() {
    query.value = textController.text;
  }
}