import 'package:flutter/material.dart';
import 'package:mobile/componentes/TextDescription.dart';
import 'package:mobile/models/Employee.dart';
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
          fit: BoxFit.cover,     
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(width: 30);
          },
          errorBuilder: (context,url,error) => const Icon(Icons.error),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text(employee.name),
      ),
      children: [
        TextDescription(
          title: "Cargo",
          value: employee.job,
        ),
        TextDescription(
          title: "Data de admissão",
          value: DateFormat('dd/MM/yyyy').format(employee.admissionDate),
        ),
        TextDescription(
          title: "Telefone",
          value: formatter.maskText(employee.phone),
        ),
      ],
    );
  }
}
