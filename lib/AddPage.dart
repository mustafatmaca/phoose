import 'dart:ffi';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phoose/HabitListPage.dart';

class AddPage extends StatefulWidget{
  @override
  _AddPageState createState() => _AddPageState();

}

class _AddPageState extends State<AddPage>{
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
                    SizedBox(height: 50,),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Image.asset("images/7948.jpg"),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 10.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(30.0),
                                  child: Text('phoose'.tr(),
                                      style: TextStyle(
                                          fontFamily: "Poppins-Bold",
                                          fontSize: ScreenUtil.getInstance().setSp(46),
                                          letterSpacing: .6,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 325,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 55, right: 30, top: 10),
                                  child: Text('Tap_Add_Button_and_Load_Your_Photos'.tr(),
                                      style: TextStyle(
                                          fontFamily: "Poppins-Bold",
                                          fontSize: ScreenUtil.getInstance().setSp(30),
                                          letterSpacing: .6,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                    margin: EdgeInsets.all(20.0),
                                    child: FloatingActionButton(
                                      child: Icon(Icons.add, color: Colors.black54,),
                                      onPressed: (){
                                        Navigator.push( context, MaterialPageRoute( builder: (context) => HabitListPage()), ).then((value) => setState(() {}));
                                        /*showDialog(
                                          context: context,
                                          builder: (BuildContext context){
                                            return AlertDialog(
                                                content: Stack(
                                                  overflow: Overflow.visible,
                                                  children: <Widget>[
                                                    HabitListPage(),
                                                  ],
                                                ),
                                            );
                                          }
                                        );*/
                                      },
                                      backgroundColor: Colors.orangeAccent,
                                    )
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      );
  }
}