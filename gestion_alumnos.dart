/// Support for doing something awesome.
///
/// More dartdocs go here.
library gestion_alumnos;

import 'Alumno.dart';
import 'globals.dart';
export 'gestion_alumnos_base.dart';

// TODO: Export any libraries intended for clients of this package.

void main(List<String> args) {
  ordenarModulos();
  validarNumeroDeModulos();
  moduloEncontrado();
  
}

void ordenarModulos() {
  print("Modulos ordenados:");
  var ordenadoPorClave = Map.fromEntries(infoModulos.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  print(ordenadoPorClave);
}

void validarNumeroDeModulos() {
  for (int i=0; i <alumnos.length;i++) {
    var alumnoActual = alumnos[i];
    var alumnoActualNombre = alumnos[i].nombre;
    print("Alumno: $alumnoActualNombre");
    if (alumnoActual.modulos.length < 4) {
      print("Curso incompleto");
      for (int i = 0;i<infoModulos.length;i++){
        var element = infoModulos.values.elementAt(i);
        if (!alumnoActual.modulos.contains(element)) {
          print("No tienes el modulo de: $element");
          alumnoActual.modulos.add(element);
          print("Ya te hemos añadido el modulo que te faltaba.");
        }
      }
    }else {
      print("Curso completo");
    }
    
  }
}

bool buscarModulo(Alumno alumno, String nombreModulo){
  bool estaModulo = false;
  if (alumnos.contains(alumno)){
    for (int i=0;i < alumno.modulos.length;i++) {
      if (alumno.modulos[i].nombre == nombreModulo) {
        estaModulo = true;
      }
    }
    return estaModulo;
  }else {
    return estaModulo;
  }
} 

void moduloEncontrado(){
  Alumno alumno = alumno1;
  String nombreModulo = "Acceso a datos";
  buscarModulo(alumno, nombreModulo);
  print(buscarModulo(alumno, nombreModulo));
} 
