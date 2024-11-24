import 'package:flutter/material.dart';
import 'package:mobile/utils/AppColors.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(        
        width: size.width,
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: AppColors.grey,
          border: Border.all(
            color: AppColors.grey,          
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning),
            Text("Ocorreu um erro"),
          ],
        ),
      )
    );
  }
}