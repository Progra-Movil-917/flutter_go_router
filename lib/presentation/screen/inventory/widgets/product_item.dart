
import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/domain/model/producto.dart';

List<Widget> productItem(List<Producto> productos, BuildContext context) {
  return productos.map((producto) => ListTile(
    title: Text(producto.name),
    leading: producto.image != null ? Image.network(producto.image!) : null,
    subtitle: Text(producto.price.toString()),
    trailing: IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        //context.go('/inventory/${producto.id}');
      },
    ),
  )).toList();
}