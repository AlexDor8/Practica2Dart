import 'Modulo.dart';

class Alumno {
  String nombre;
  String apellidos;
  String dni;
  int edad;
  List<Modulo> modulos;
  bool repetidor;

  Alumno(this.nombre, this.apellidos, this.dni, this.edad, this.modulos, this.repetidor);

  String esRepetidor() {
    String hasRepetido = "";
    if (repetidor) {
      hasRepetido = "repetidor";
      return hasRepetido;
    }else {
      return hasRepetido;
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$nombre $apellidos ($edad) - $dni: $modulos (${esRepetidor()})";
  }
}