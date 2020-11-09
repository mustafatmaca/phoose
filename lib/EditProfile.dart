import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'LoginPage.dart';
import 'User.dart';

var newUserNameController = new TextEditingController();
var newPasswordController = new TextEditingController();
var newEmailController = new TextEditingController();



class EditProfile extends StatefulWidget{

  @override
  _EditProfileState createState() => _EditProfileState();

}

class _EditProfileState extends State<EditProfile>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
            elevation: 1,
            title: Text('edit_profile'.tr(), textAlign: TextAlign.center, style: TextStyle(color: Colors.black54),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black54,),
              onPressed: (){
                newUserNameController.clear();
                newPasswordController.clear();
                newEmailController.clear();
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.check, color: Colors.black54,),
                onPressed: (){
                  if(newUserNameController.text != "" && newPasswordController.text != "" && newEmailController.text != ""){
                    user.userName = newUserNameController.text;
                    user.password = newPasswordController.text;
                    user.email = newEmailController.text;
                  }
                  else if(newUserNameController.text != "" && newPasswordController.text != ""){
                    user.userName = newUserNameController.text;
                    user.password = newPasswordController.text;
                  }
                  else if(newUserNameController.text != "" && newEmailController.text != ""){
                    user.userName = newUserNameController.text;
                    user.email = newEmailController.text;
                  }
                  else if(newPasswordController.text != "" && newEmailController.text != ""){
                    user.password = newPasswordController.text;
                    user.email = newEmailController.text;
                  }
                  else if(newUserNameController.text != ""){
                    user.userName = newUserNameController.text;
                  }
                  else if(newPasswordController.text != ""){
                    user.password = newPasswordController.text;
                  }
                  else if(newEmailController.text != ""){
                    user.email = newEmailController.text;
                  }
                  newUserNameController.clear();
                  newPasswordController.clear();
                  newEmailController.clear();
                  Navigator.pop(context);
                },
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Stack(
                              children: [
                                Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/1.jpg")
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0.0, 15.0),
                                      blurRadius: 15.0),
                                    ]),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orangeAccent,
                                    ),
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text('username'.tr(),
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextFormField(
                            cursorColor: Colors.black54,
                            controller: newUserNameController,
                            decoration: InputDecoration(
                                hintText: user.userName,
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
                            cursorColor: Colors.black54,
                            controller: newPasswordController,
                            decoration: InputDecoration(
                                hintText: user.password,
                                hintStyle: TextStyle(color: Colors.black54, fontSize: 12.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                          Text('email'.tr(),
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextFormField(
                            cursorColor: Colors.black54,
                            controller: newEmailController,
                            decoration: InputDecoration(
                                hintText: user.email,
                                hintStyle: TextStyle(color: Colors.black54, fontSize: 12.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ),
      );
  }

}