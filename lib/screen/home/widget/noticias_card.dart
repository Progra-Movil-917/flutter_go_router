import 'package:flutter/material.dart';
import 'package:flutter_app_utilidades/interface/noticia.dart';

class NoticiaCard extends StatelessWidget {
  final Noticia noticia;

  NoticiaCard({required this.noticia});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(noticia.urlToImage ?? ''),
          Text(noticia.title),
          Text(noticia.description),
        ],
      ),
    );
  }
}