import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var newUsernameCtrl = new TextEditingController();
var newPasswordCtrl = new TextEditingController();
var newMailCtrl = new TextEditingController();


class FormCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
//      height: ScreenUtil.getInstance().setHeight(500),
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.amberAccent,Colors.orangeAccent],
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('sign_up'.tr(),
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(50),
            ),
            Text('email'.tr(),
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextFormField(
              cursorColor: Colors.black54,
              controller: newMailCtrl,
              decoration: InputDecoration(
                  hintText: 'email'.tr(),
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text('username'.tr(),
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextFormField(
              cursorColor: Colors.black54,
              controller: newUsernameCtrl,
              decoration: InputDecoration(
                  hintText: 'username'.tr(),
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text('password'.tr(),
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextFormField(
              obscureText: true,
              cursorColor: Colors.black54,
              controller: newPasswordCtrl,
              decoration: InputDecoration(
                  hintText: 'password'.tr(),
                  hintStyle: TextStyle(color: Colors.black54, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
