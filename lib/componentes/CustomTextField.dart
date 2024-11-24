
import 'package:flutter/material.dart';
import 'package:mobile/utils/AppColors.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final String? hintText;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    this.label,
    this.icon,
    this.controller,
    this.hintText = "",
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(                                         
            decoration: InputDecoration(     
              prefixIcon: icon,              
              hintText: hintText,
              hintStyle: TextStyle(color: AppColors.black),
              enabledBorder: OutlineInputBorder(                
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.grey),              
              ),               
              focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: AppColors.grey),              
              ), 
              contentPadding: const EdgeInsets.all(15),  
              filled: true,
            ),               
            controller: controller,
          ),          
        ),
      ],
    );
  }
}