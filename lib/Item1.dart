import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 1],
              colors: [Colors.amberAccent, Colors.orangeAccent]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'prepare_your_photos'.tr(),
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: ScreenUtil.getInstance().setSp(40),
                    letterSpacing: .6,
                    fontWeight: FontWeight.bold)
            ),
          ],
        ),
      );
  }
}