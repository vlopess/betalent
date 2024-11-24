import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  final String title;
  final String value;
  const TextDescription({
    required this.title,
    required this.value,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}