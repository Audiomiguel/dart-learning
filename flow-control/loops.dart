void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    // print(i);
  }

  List<String> names = ['Fernando', 'Alberto', 'Javier', 'Alejandro', 'Humano'];
  for (var name in names) {
    if (name == 'Humano') {
      continue;
    }
    print(name);
  }
}
