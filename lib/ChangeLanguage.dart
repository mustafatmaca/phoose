import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage>{
  String dropdownValue = 'English - US';
  String icon = "uk.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        elevation: 1,
        title: Text('change_language'.tr(), textAlign: TextAlign.center, style: TextStyle(color: Colors.black54),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black54,),
          onPressed: (){
            Navigator.pop(context,true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                        ListTile(
                          title: Text('english'.tr(), style: TextStyle(
                              fontFamily: "Poppins-Bold",
                              fontSize: ScreenUtil.getInstance().setSp(30),
                              letterSpacing: .6,
                              fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                          onTap: (){
                            context.locale = Locale('en', 'US');
                          },
                        ),
                        Container(
                          color: Colors.black54,
                          height: 0.5,
                        ),
                        ListTile(
                          title: Text('turkish'.tr(), style: TextStyle(
                              fontFamily: "Poppins-Bold",
                              fontSize: ScreenUtil.getInstance().setSp(30),
                              letterSpacing: .6,
                              fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                          onTap: (){
                            context.locale = Locale('tr', 'TR');
                          },
                        ),
                      ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}