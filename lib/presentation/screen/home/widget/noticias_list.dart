import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/domain/model/noticia.dart';
import 'package:flutter_app_utilidades/presentation/screen/home/widget/noticias_card.dart';

class NoticiasList extends StatelessWidget {
  final List<Noticia> noticias=List.empty(growable: true);

NoticiasList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (context, index) {
        return NoticiaCard(noticia: noticias[index]);
      },
    );
  }
}