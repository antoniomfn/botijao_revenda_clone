import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:botijao_revenda_clone/app/components/tile_card.dart';
import 'package:botijao_revenda_clone/app/components/locationbar.dart';
import 'package:botijao_revenda_clone/app/models/empresa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Empresa> dados;

  @override
  void initState() {
    rootBundle.loadString('data/dados.json').then((value) {
      List<dynamic> jsonList = json.decode(value);
      this.setState(() {
        dados = jsonList.map((e) => Empresa.fromJson(e)).toList();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha uma Revenda'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.import_export),
            itemBuilder: (_) {
              return [
                PopupMenuItem(
                  value: 'nota',
                  child: Text(
                    'Melhor avaliação',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                    ),
                    textScaleFactor: ScreenUtil().scaleText,
                  ),
                ),
                PopupMenuItem(
                  value: 'tempoMedio',
                  child: Text(
                    'Mais rápido',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                    ),
                    textScaleFactor: ScreenUtil().scaleText,
                  ),
                ),
                PopupMenuItem(
                  value: 'preco',
                  child: Text(
                    'Mais barato',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                    ),
                    textScaleFactor: ScreenUtil().scaleText,
                  ),
                ),
              ];
            },
            onSelected: (value) {
              setState(() {
                switch (value) {
                  case 'nota':
                    dados.sort((a, b) => b.nota.compareTo(a.nota));
                    break;
                  case 'tempoMedio':
                    dados.sort((a, b) => a.tempoMedio.compareTo(b.tempoMedio));
                    break;
                  case 'preco':
                    dados.sort((a, b) => a.preco.compareTo(b.preco));
                    break;
                }
              });
            },
          ),
          PopupMenuButton(
            icon: Text(
              '?',
              style: TextStyle(
                fontSize: 46,
              ),
              textScaleFactor: ScreenUtil().scaleText,
            ),
            itemBuilder: (_) {
              return [
                PopupMenuItem(
                  child: Text(
                    'Suporte',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                    ),
                    textScaleFactor: ScreenUtil().scaleText,
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Termos de serviço',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                    ),
                    textScaleFactor: ScreenUtil().scaleText,
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          LocationBar(),
          Expanded(
            child: Container(
              color: Colors.black12,
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return ListView.builder(
                    padding: EdgeInsets.symmetric(
                        vertical: constraints.maxHeight * 0.015),
                    itemCount: dados?.length ?? 0,
                    itemBuilder: (_, index) {
                      return TileCard(
                        maxHeight: constraints.maxHeight,
                        maxWidth: constraints.maxWidth,
                        empresa: dados[index],
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
