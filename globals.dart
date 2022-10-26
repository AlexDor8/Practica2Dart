import 'Alumno.dart';
import 'Modulo.dart';

final Map infoModulos = {
  "M10" : Modulo("Sistema de gestión empresarial", 3, 220), 
  "M08" : Modulo("Programación multimédia y dispositivos móviles", 3, 230),
  "M06" : Modulo("Acceso a datos", 4, 300),
  "M13" : Modulo("Proyecto", 1, 400),

};

final List<Modulo> modulosAlumno1 = [infoModulos["M10"],infoModulos["M06"]];
final List<Modulo> modulosAlumno2 = [infoModulos["M10"],infoModulos["M06"], infoModulos["M13"]];
final List<Modulo> modulosAlumno3 = [infoModulos["M10"],infoModulos["M06"], infoModulos["M13"], infoModulos["M08"]];

final Alumno alumno1 = new Alumno("Jaime", "Casado Ruiz", "45793736d", 19, modulosAlumno1, false);
final Alumno alumno2 = new Alumno("Pedro", "Garcia Soler", "36793839t", 22, modulosAlumno2, true);
final Alumno alumno3 = new Alumno("Susana", "Martinez Cuello", "49790756a", 19, modulosAlumno3, false);

final List<Alumno> alumnos = [alumno1, alumno2, alumno3];


