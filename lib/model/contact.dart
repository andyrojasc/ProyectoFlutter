//Metodo contacto Crea un objeto de tipo contacto
class Contact {
  int id;
  String nombreContacto;
  String correo;
  String numeroTelefono;
  String area;
  String empresa;
  String descripcion;
  String createdAt;
  String updatedAt;

  Contact(
      {this.id,
      this.nombreContacto,
      this.correo,
      this.numeroTelefono,
      this.area,
      this.empresa,
      this.descripcion,
      this.createdAt,
      this.updatedAt});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombreContacto = json['nombreContacto'];
    correo = json['correo'];
    numeroTelefono = json['numeroTelefono'];
    area = json['area'];
    empresa = json['empresa'];
    descripcion = json['descripcion'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombreContacto'] = this.nombreContacto;
    data['correo'] = this.correo;
    data['numeroTelefono'] = this.numeroTelefono;
    data['area'] = this.area;
    data['empresa'] = this.empresa;
    data['descripcion'] = this.descripcion;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
