import 'dart:math';

void main(List<String> args) {
  int random = Random().nextInt(7);

  switch (random) {
    case 0:
      print('Zero');
      break;
    case 1:
      print('One');
      break;

    default:
  }
}
