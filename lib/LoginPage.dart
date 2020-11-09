import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phoose/SignUpPage.dart';
import 'FormCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:phoose/User.dart';
import 'MyHomePage.dart';

var user = User(001, "mustafatmaca","123mustafa","mustafaatmaca@gmail.com");


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
    width: 16.0,
    height: 16.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black)),
    child: isSelected
        ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    )
        : Container(),
  );

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(120),
      height: 1.0,
      color: Colors.black26.withOpacity(.2),
    ),
  );

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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Image.asset("images/5244.jpg"),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
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
                        height: ScreenUtil.getInstance().setHeight(200),
                      ),
                      FormCard(),
                      SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 12.0,
                              ),
                              GestureDetector(
                                onTap: _radio,
                                child: radioButton(_isSelected),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('remember_me'.tr(),
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: "Poppins-Medium"))
                            ],
                          ),
                          InkWell(
                            child: Container(
                              width: ScreenUtil.getInstance().setWidth(330),
                              height: ScreenUtil.getInstance().setHeight(100),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.amberAccent,
                                    Colors.orangeAccent
                                  ]),
                                  borderRadius: BorderRadius.circular(6.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF6078ea).withOpacity(.3),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 8.0)
                                  ]),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: (){
                                    if(userNameController.text == user.userName && passwordController.text == user.password){
                                      userNameController.clear();passwordController.clear();emailController.clear();
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyHomePage()), ModalRoute.withName("/HomePage"));
                                    }
                                    else if(userNameController.text != user.userName && passwordController.text == user.password){
                                      return showDialog(
                                          context: context,
                                          builder: (_) => new CupertinoAlertDialog(
                                            content: new Text('wrong_user_name'.tr()),
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
                                    else if(userNameController.text == user.userName && passwordController.text != user.password){
                                      return showDialog(
                                          context: context,
                                          builder: (_) => new CupertinoAlertDialog(
                                            content: new Text('wrong_password'.tr()),
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
                                    else if(userNameController.text != user.userName && passwordController.text != user.password){
                                      return showDialog(
                                          context: context,
                                          builder: (_) => new CupertinoAlertDialog(
                                            content: new Text('wrong_user_name_and_password'.tr()),
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
                                  },
                                  child: Center(
                                    child: Text('sign_in'.tr(),
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil.getInstance().setHeight(60),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'new_user'.tr(),
                            style: TextStyle(fontFamily: "Poppins-Medium"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push( context, MaterialPageRoute( builder: (context) => SignUpPage()), ).then((value) => setState(() {}));
                            },
                            child: Text('sign_up'.tr(),
                                style: TextStyle(
                                    color: Color(0xFF5d74e3),
                                    fontFamily: "Poppins-Bold")),
                          )
                        ],
                      )
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