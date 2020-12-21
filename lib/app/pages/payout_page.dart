import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:botijao_revenda_clone/app/models/empresa.dart';

class PayoutPage extends StatefulWidget {
  Empresa empresa;

  PayoutPage({Key key, Empresa empresa}) : super(key: key);

  @override
  _PayoutPageState createState() => _PayoutPageState();
}

class _PayoutPageState extends State<PayoutPage> {
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
      body: Container(
        height: 110,
        padding:
            EdgeInsets.symmetric(horizontal: ScreenUtil().screenWidth * 0.05),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12,
              ),
              child: Container(
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              child: Divider(
                height: 3,
                color: Colors.black,
              ),
              width: ScreenUtil().screenWidth * 0.18,
            ),
            Container(
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black26),
              ),
            ),
            Container(
              child: Divider(
                height: 3,
                color: Colors.black,
              ),
              width: ScreenUtil().screenWidth * 0.18,
            ),
            Container(
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
