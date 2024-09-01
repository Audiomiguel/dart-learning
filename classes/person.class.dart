class Persona {
  String? nombre;
  String _dni = '12345678';

  @override
  String toString() {
    return "Nombre: $this.nombre - DNI: $_dni";
  }

  String get info {
    return "$nombre $_dni";
  }

  Persona() {
    print('Constructor');
  }
}
