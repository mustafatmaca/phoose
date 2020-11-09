import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'LoginPage.dart';

void main() => runApp(
    EasyLocalization(
      path: 'langs',
      supportedLocales: [Locale('tr','TR'), Locale('en','US')],
      child: MyApp())
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        title: "Phoose",
        home: LoginPage(),
      );
  }
}



