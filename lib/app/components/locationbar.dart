import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationBar extends StatelessWidget {
  const LocationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Botijão de 13kg em:',
                style: TextStyle(fontSize: 18, color: Colors.black45),
                textScaleFactor: ScreenUtil().scaleText,
              ),
              Text(
                'Av. Rio Branco, 2010',
                style: TextStyle(fontSize: 28),
                textScaleFactor: ScreenUtil().scaleText,
              ),
              Text(
                'Centro, Juiz de Fora, MG',
                style: TextStyle(fontSize: 22, color: Colors.black54),
                textScaleFactor: ScreenUtil().scaleText,
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.blue,
              ),
              Text(
                'Mudar',
                style: TextStyle(fontSize: 24, color: Colors.blue),
                textScaleFactor: ScreenUtil().scaleText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
