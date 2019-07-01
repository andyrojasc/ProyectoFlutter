//Metodo contacto Crea un objeto de tipo contacto
class Task {
  int id;
  String fechaActividad;
  String nombreTarea;
  String descripcion;
  String createdAt;
  String updatedAt;

  Task(
      {this.id,
      this.fechaActividad,
      this.nombreTarea,
      this.descripcion,
      this.createdAt,
      this.updatedAt});

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fechaActividad = json['fechaActividad'];
    nombreTarea = json['nombreTarea'];
    descripcion = json['descripcion'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fechaActividad'] = this.fechaActividad;
    data['nombreTarea'] = this.nombreTarea;
    data['descripcion'] = this.descripcion;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    print(data);
    return data;
  }
}
