

abstract class UrlAPI {
  //mudar para o IP da máquina
  static const String _ip = "192.168.10.14";
  static String get _partialPath => "http://$_ip:3000";
  static String get listarEmployees => "$_partialPath/employees";
}