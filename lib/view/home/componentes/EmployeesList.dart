import 'package:flutter/material.dart';
import 'package:mobile/model/Employee.dart';
import 'package:mobile/utils/AppColors.dart';
import 'package:mobile/utils/AppSpacing.dart';
import 'package:mobile/view/home/componentes/ContainerEmployee.dart';

class EmployeesList extends StatefulWidget {
  final List<Employee> employees;
  const EmployeesList({required this.employees,super.key});

  @override
  State<EmployeesList> createState() => _EmployeesListState();
}

class _EmployeesListState extends State<EmployeesList> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey,          
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.blueSecondary,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Foto", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: AppSpacing.regular2),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Nome", style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.circle, size: 12),
                  ],
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: widget.employees.length,
              itemBuilder: (context, index) => ContainerEmployee(employee: widget.employees[index],),
              separatorBuilder: (context, index) => const Divider(),
            )
          ],
        ),
      ),
    );
  }
}