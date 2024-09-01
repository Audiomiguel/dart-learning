void main() {
  int b = 1;

  b ??= 10; // If b is null, assign 10 to b

  print(b); // 1

  /// Conditional Operator
  int c = 23;

  String resp = c > 25 ? 'Greater than 25' : 'Less than or equal to 25';

  print(resp); // Less than or equal to 25
}
