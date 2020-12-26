import 'package:botijao_revenda_clone/app/models/empresa.dart';
import 'package:botijao_revenda_clone/app/pages/payout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TileCard extends StatelessWidget {
  const TileCard({Key key, this.maxHeight, this.maxWidth, this.empresa})
      : super(key: key);

  final double maxHeight;
  final double maxWidth;
  final Empresa empresa;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PayoutPage(
              empresa: empresa,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: maxHeight * .015, horizontal: maxWidth * .025),
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Container(
              height: 110,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(num.tryParse('0xFF${empresa.cor}') ?? 0xFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text('${empresa.tipo}',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    textScaleFactor: ScreenUtil().scaleText),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          '${empresa.nome}',
                          style: TextStyle(fontSize: 24),
                          textScaleFactor: ScreenUtil().scaleText,
                        ),
                      ),
                      if (empresa.melhorPreco)
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.yellow[700],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.label,
                                color: Colors.white,
                              ),
                              Text(
                                'Melhor Preço',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                textScaleFactor: ScreenUtil().scaleText,
                              ),
                            ],
                          ),
                        )
                    ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: maxWidth * 0.05,
                              vertical: maxHeight * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nota',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black45),
                                textScaleFactor: ScreenUtil().scaleText,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      '${empresa.nota}',
                                      style: TextStyle(
                                        fontSize: 38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textScaleFactor: ScreenUtil().scaleText,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: maxWidth * 0.05, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tempo médio',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black45),
                                textScaleFactor: ScreenUtil().scaleText,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '${empresa.tempoMedio}',
                                      style: TextStyle(
                                        fontSize: 38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textScaleFactor: ScreenUtil().scaleText,
                                    ),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black45,
                                      ),
                                      textScaleFactor: ScreenUtil().scaleText,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Preço',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black45),
                                textScaleFactor: ScreenUtil().scaleText,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'R\$ ${empresa.preco.toStringAsFixed(2).replaceAll('.', ',')}',
                                  style: TextStyle(
                                    fontSize: 38,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textScaleFactor: ScreenUtil().scaleText,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
