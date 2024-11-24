// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mobile/componentes/CustomTextField.dart';
import 'package:mobile/utils/AppColors.dart';
import 'package:mobile/utils/AppSpacing.dart';

class SearchEmployeesContainer extends StatefulWidget {
  final TextEditingController textController;
  const SearchEmployeesContainer({
    super.key,
    required this.textController,
  });

  @override
  State<SearchEmployeesContainer> createState() => _SearchEmployeesContainerState();
}

class _SearchEmployeesContainerState extends State<SearchEmployeesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(      
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSpacing.regular1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text("Funcionários", 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              icon: Icon(Icons.search, color: AppColors.black),
              hintText: "Pesquisar",
              controller: widget.textController,
            ),
          )
        ],
      ),
    );
  }
}