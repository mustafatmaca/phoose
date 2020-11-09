import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phoose/ChangeLanguage.dart';
import 'package:phoose/EditProfile.dart';
import 'package:phoose/LoginPage.dart';


class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                                margin: const EdgeInsets.all(10.0),
                                color: Colors.orangeAccent,
                                elevation: 5.0,
                                child: ListTile(
                                  onTap: (){
                                    Navigator.push( context, MaterialPageRoute( builder: (context) => EditProfile()), ).then((value) => setState(() {}));
                                  },
                                  title: Text(user.userName, style: TextStyle(
                                      fontFamily: "Poppins-Bold",
                                      fontSize: ScreenUtil.getInstance().setSp(30),
                                      letterSpacing: .6,
                                      fontWeight: FontWeight.bold),),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage("images/1.jpg"),
                                  ),
                                  trailing: Icon(Icons.edit, color: Colors.black54,),
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 280,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              margin: const EdgeInsets.all(10.0),
                              color: Colors.orangeAccent,
                              elevation: 5.0,
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.all_inclusive, color: Colors.black54,),
                                    title: Text("upgrade_premium".tr(), style: TextStyle(
                                        fontFamily: "Poppins-Bold",
                                        fontSize: ScreenUtil.getInstance().setSp(30),
                                        letterSpacing: .6,
                                        fontWeight: FontWeight.bold),),
                                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                                    onTap: (){

                                    },
                                  ),
                                  Container(
                                    color: Colors.black54,
                                    height: 0.5,
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.translate, color: Colors.black54,),
                                    title: Text('change_language'.tr(), style: TextStyle(
                                        fontFamily: "Poppins-Bold",
                                        fontSize: ScreenUtil.getInstance().setSp(30),
                                        letterSpacing: .6,
                                        fontWeight: FontWeight.bold),),
                                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                                    onTap: (){
                                      Navigator.push( context, MaterialPageRoute( builder: (context) => ChangeLanguage()), ).then((value) => setState(() {}));
                                    },
                                  ),
                                  Container(
                                    color: Colors.black54,
                                    height: 0.5,
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.close, color: Colors.black54,),
                                    title: Text('sign_out'.tr(), style: TextStyle(
                                        fontFamily: "Poppins-Bold",
                                        fontSize: ScreenUtil.getInstance().setSp(30),
                                        letterSpacing: .6,
                                        fontWeight: FontWeight.bold),),
                                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                                    onTap: (){
                                      return showDialog(
                                          context: context,
                                          builder: (_) => new CupertinoAlertDialog(
                                            content: new Text('Do_you_want_sign_out'.tr()),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('no'.tr()),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              FlatButton(
                                                child: Text('yes'.tr()),
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), ModalRoute.withName("/LoginPage"));
                                                },
                                              )
                                            ],
                                          )
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      );
  }
}
