import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile/model/Employee.dart';
import 'package:mobile/utils/UrlAPI.dart';


class HomeRoute {

  Future<List<Employee>> listEmployees() async {
    try {
      var url = Uri.parse(UrlAPI.listarEmployees);
      var headers = {
        "Content-Type": "application/json; charset=utf-8",
      };
      var response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        var employees = (parsed as List<dynamic>).map((e) => Employee.fromMap(e)).toList();
        return employees;
      }
      return throw Exception("Ocorreu algum erro ao buscar os dados");      
    } catch (e) {
      rethrow;      
    }
  }
}