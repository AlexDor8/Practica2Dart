class Modulo {
  String nombre;
  int ufs;
  int horas;

  Modulo(this.nombre, this.ufs, this.horas);

  @override
  String toString() {
    // TODO: implement toString
    return "$nombre - $ufs - ($horas horas)";
  }
}