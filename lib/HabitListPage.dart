import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HabitListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HabitListPageState();

}

class _HabitListPageState extends State<HabitListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        elevation: 1,
        title: Text('Habits', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54),),
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
                    title: Text('Read Book', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.only(right: 50.0),
                      child: Image.asset("images/3630.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Watch Film', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Image.asset("images/6902.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Fitness', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.only(right: 17.0),
                      child: Image.asset("images/8225.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Walking', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Draw Picture', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Study Lesson', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Learn a Language', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits1', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits2', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits3', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits4', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits5', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits6', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits7', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
                    },
                  ),
                  Container(
                    color: Colors.black54,
                    height: 0.5,
                  ),
                  ListTile(
                    title: Text('Habits8', style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(30),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset("images/2483.jpg"),
                    ),
                    onTap: (){
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