void main(List<String> args) {
  outerLoop:
  for (int i = 0; i < 3; i++) {
    innerLoop:
    for (int j = 0; j < 3; j++) {
      if (i == 1 && j == 1) {
        break outerLoop;
      }
      print('i: $i, j: $j');
    }
  }
}
