import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Item1.dart';
import 'Item2.dart';
import 'Item3.dart';



class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{

  int _currentIndex=0;
  List cardList=[
    Item1(),
    Item2(),
    Item3(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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
                    child: Image.asset("images/3349.jpg"),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Padding(
                  padding:  EdgeInsets.only(top: 60.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 300,),
                      CarouselSlider(
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          height: 150.0,
                          autoPlay: false,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: (Curves.fastOutSlowIn),
                          pauseAutoPlayOnManualNavigate: true,
                          aspectRatio: 20.0,
                          initialPage: 0,
                          onPageChanged: (index, reason){
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        items: cardList.map((card){
                          return Builder(
                            builder: (BuildContext context){
                              return Container(
                                margin: EdgeInsets.all(5.0),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.3, 1],
                                      colors: [Colors.orangeAccent, Colors.amberAccent]
                                  ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(0.0, 5.0),
                                          blurRadius: 15.0),
                                      BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(0.0, -5.0),
                                          blurRadius: 10.0),
                                    ]
                                ),
                                child: card,
                              );
                            }
                          );
                        }).toList(),
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

