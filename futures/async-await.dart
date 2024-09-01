import 'dart:io';

void main(List<String> args) {
  final String path = Directory.current.path + '/futures/persons.txt';
  leerArchivo(path).then((data) => print(data));
}

Future<String> leerArchivo(String path) async {
  File file = new File(path);

  return file.readAsString();
}
