// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';





class Employee {
  final int id;
  final String name;
  final String job;
  final DateTime admissionDate;
  final String phone;
  final String image; 

  Employee({
    required this.id,
    required this.name,
    required this.job,
    required this.admissionDate,
    required this.phone,
    required this.image,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'job': job,
      'admissionDate': admissionDate.millisecondsSinceEpoch,
      'phone': phone,
      'image': image,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'] == null ? 0 : int.parse(map['id']),
      name: map['name'] ?? '',
      job: map['job'] ?? '',
      admissionDate: DateTime.parse(map['admission_date'] as String),
      phone: map['phone']  ?? '',
      image: map['image']  ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromJson(String source) => Employee.fromMap(json.decode(source) as Map<String, dynamic>);
}
