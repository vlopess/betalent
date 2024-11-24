import 'package:flutter/material.dart';
import 'package:mobile/model/Employee.dart';
import 'package:mobile/utils/AppColors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';


class ContainerEmployee extends StatelessWidget {
  final Employee employee;
  const ContainerEmployee({super.key, required this.employee});


  @override
  Widget build(BuildContext context) {
    var formatter = MaskTextInputFormatter(mask: '+## (##) ######-###');

    return ExpansionTile(
      iconColor: AppColors.bluePrimary,
      collapsedIconColor: AppColors.bluePrimary,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network(
          height: 30,
          employee.image,            
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text(employee.name),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Cargo", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(employee.job),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Data de admissão", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(DateFormat('dd/MM/yyyy').format(employee.admissionDate)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Telefone", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(formatter.maskText(employee.phone)),
            ],
          ),
        ),
      ],
    );
  }
}