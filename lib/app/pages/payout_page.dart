import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:botijao_revenda_clone/app/models/empresa.dart';

class PayoutPage extends StatefulWidget {
  final Empresa empresa;

  PayoutPage({Key key, this.empresa}) : super(key: key);

  @override
  _PayoutPageState createState() => _PayoutPageState();
}

class _PayoutPageState extends State<PayoutPage> {
  double preco;
  double total;
  int count = 1;

  @override
  void initState() {
    preco = widget.empresa.preco;
    total = preco;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Selecionar Produtos',
          ),
        ),
        actions: [
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
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().screenWidth * 0.05),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text(
                      'Comprar',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      textScaleFactor: ScreenUtil().scaleText,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Divider(
                    color: Colors.black26,
                  ),
                  width: ScreenUtil().screenWidth * 0.15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15, top: 10),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black26),
                      ),
                    ),
                    Text(
                      'Pagamento',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      textScaleFactor: ScreenUtil().scaleText,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Divider(
                    color: Colors.black26,
                  ),
                  width: ScreenUtil().screenWidth * 0.15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15, top: 10),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black26),
                      ),
                    ),
                    Text(
                      'Confirmação',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      textScaleFactor: ScreenUtil().scaleText,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: Text(
                        '$count',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      '${widget.empresa.nome} - Botijão de 13kg',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      textScaleFactor: ScreenUtil().scaleText,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      'R\$ ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textScaleFactor: ScreenUtil().scaleText,
                    ),
                    Text(
                      '${total.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                      textScaleFactor: ScreenUtil().scaleText,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black12,
              width: ScreenUtil().screenWidth,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.black45,
                                size: 40,
                              ),
                              Container(
                                width: ScreenUtil().screenWidth * 0.4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        '${widget.empresa.nome}',
                                        style: TextStyle(
                                          fontSize: 30,
                                        ),
                                        textScaleFactor: ScreenUtil().scaleText,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '${widget.empresa.nota} ',
                                              style: TextStyle(
                                                fontSize: 30,
                                              ),
                                              textScaleFactor:
                                                  ScreenUtil().scaleText,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 8,
                                            )
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Text(
                                            '${widget.empresa.tempoMedio} min',
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                            textScaleFactor:
                                                ScreenUtil().scaleText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                color: Color(
                                    num.tryParse('0xFF${widget.empresa.cor}') ??
                                        0xFF),
                                child: Text(
                                  '${widget.empresa.tipo}',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                  textScaleFactor: ScreenUtil().scaleText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Botijão de 13kg',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                    ),
                                    textScaleFactor: ScreenUtil().scaleText,
                                  ),
                                  Text(
                                    '${widget.empresa.nome}',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.black,
                                    ),
                                    textScaleFactor: ScreenUtil().scaleText,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    children: [
                                      Text(
                                        'R\$ ',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                        ),
                                        textScaleFactor: ScreenUtil().scaleText,
                                      ),
                                      Text(
                                        '${widget.empresa.preco.toStringAsFixed(2).replaceAll('.', ',')}',
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textScaleFactor: ScreenUtil().scaleText,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  FlatButton(
                                    minWidth: 10,
                                    color: Colors.black38,
                                    onPressed: () {
                                      setState(() {
                                        if (count > 1) {
                                          count--;
                                          total = count * preco;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                    shape: CircleBorder(),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/prod_icon-gas.png'),
                                        height: 100,
                                        width: 50,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 3.5),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(15, 15)),
                                        ),
                                        child: Text(
                                          '$count',
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                          ),
                                          textScaleFactor:
                                              ScreenUtil().scaleText,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                  FlatButton(
                                    minWidth: 10,
                                    color: Colors.black38,
                                    onPressed: () {
                                      setState(() {
                                        count++;
                                        total = count * preco;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    shape: CircleBorder(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RaisedButton(
        padding: EdgeInsets.all(0),
        child: Ink(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
              colors: [
                Colors.blue[200],
                Colors.blue,
              ],
            ),
          ),
          child: Text(
            'Ir para pagamento',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
            textScaleFactor: ScreenUtil().scaleText,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {},
      ),
    );
  }
}
