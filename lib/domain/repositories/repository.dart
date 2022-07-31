import 'package:Test_Web/data/data_sources/provider.dart';
import 'package:Test_Web/data/models/employee_list.dart';
import 'package:http/http.dart' as http;

class Repository {
  Provider startScreenProviders = Provider();

  Future<List<Employee>> getEmployees() =>
      startScreenProviders.getEmployees();
}
