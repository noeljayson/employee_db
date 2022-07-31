import 'dart:convert';

import 'package:Test_Web/config/server_addresses.dart';
import 'package:Test_Web/widgets/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:Test_Web/data/models/employee_list.dart';

List<Employee> parseEmployee(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var empl = list.map((model) => Employee.fromMap(model)).toList();
  return empl;
}

Future<List<Employee>> fetchEmployees() async {
  final response = await http.get(Uri.parse(ServerAddresses.employeelist));
  if (response.statusCode == 200) {
    return compute(parseEmployee, response.body);
  } else {
    throw Exception("Request Api error");
  }
}
