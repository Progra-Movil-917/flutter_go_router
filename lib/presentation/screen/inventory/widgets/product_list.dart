import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/data/repository/producto_repository.dart';
import 'package:flutter_app_utilidades/domain/model/producto.dart';
import 'package:flutter_app_utilidades/presentation/screen/inventory/widgets/product_item.dart';

Widget productList() {
  final producto = ProductoRepository().getAll();

  return FutureBuilder(
      future: producto, 
      builder: (context, AsyncSnapshot<List<Producto>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: productItem(snapshot.data!, context)
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
}