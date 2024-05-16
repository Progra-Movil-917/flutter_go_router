import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app_utilidades/domain/model/producto.dart';

class ProductoRepository {
  final path = 'assets/productos.json';
  List<Producto> _productoFromJson(String str) =>
      List<Producto>.from(json.decode(str).map((x) => Producto.fromJson(x)));

  Future<List<Producto>> getAll() async {
    final String dataBuffer = await rootBundle.loadString(path);
    return _productoFromJson(dataBuffer);
  }

  /*
  Future<Producto> getById(int id) async {
    // Lógica para obtener un producto por id
  }
  
  Future<Producto> create(Producto producto) async {
    // Lógica para crear un producto
  }
  
  Future<Producto> update(Producto producto) async {
    // Lógica para actualizar un producto
  }
  
  Future<void> delete(int id) async {
    // Lógica para eliminar un producto
  }*/
}
