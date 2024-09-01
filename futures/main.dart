import 'dart:io';

void main(List<String> args) {
  print(Directory.current.path);
  File file = new File(Directory.current.path + '/futures/persons.txt');

  Future<String> f = file.readAsString();

  f.then((data) => print(data));

  print('Fin del main');
}
