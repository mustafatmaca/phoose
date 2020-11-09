import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:phoose/FormCardTwo.dart';
import 'package:phoose/LoginPage.dart';

class SignUpPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(bottom: 230.0,left: 180.0),
                 child: Image.asset("images/5964.jpg"),
               ),
               Expanded(
                 child: Container(),
                 ),
               ],
             ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 28,right: 28,top: 40),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('phoose'.tr(),
                            style: TextStyle(
                                fontFamily: "Poppins-Bold",
                                fontSize: ScreenUtil.getInstance().setSp(46),
                                letterSpacing: .6,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(160),
                    ),
                    FormCardTwo(),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(80),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            width: ScreenUtil.getInstance().setWidth(300),
                            height: ScreenUtil.getInstance().setHeight(100),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.white,
                                  Colors.white,
                                ]),
                                borderRadius: BorderRadius.circular(6.0),
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text('close'.tr(),
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            width: ScreenUtil.getInstance().setWidth(300),
                            height: ScreenUtil.getInstance().setHeight(100),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.amberAccent,
                                  Colors.orangeAccent
                                ]),
                                borderRadius: BorderRadius.circular(6.0),
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
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  if(newUsernameCtrl.text != "" && newPasswordCtrl.text != "" && newMailCtrl.text != ""){
                                    user.userName = newUsernameCtrl.text;
                                    user.password = newPasswordCtrl.text;
                                    user.email = newMailCtrl.text;
                                  }
                                  else{
                                    return showDialog(
                                        context: context,
                                        builder: (_) => new CupertinoAlertDialog(
                                          content: new Text('please_fill'.tr()),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('close'.tr()),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        )
                                    );
                                  }
                                  newUsernameCtrl.clear();
                                  newMailCtrl.clear();
                                  newPasswordCtrl.clear();
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text('sign_up'.tr(),
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(100),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}