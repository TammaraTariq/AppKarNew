import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newappkar/GUI/Onboarding.dart';
import 'package:newappkar/GUI/LoginPage.dart';
import 'package:newappkar/GUI/RegisterPage.dart';
void main() {
  runApp( new NewKar());
}


class NewKar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.blue[400]),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
      title: 'AppKar',
      routes: <String , WidgetBuilder>{
        '/LoginPage' : (BuildContext context) => new LoginPage(),
        '/RegisterPage' : (BuildContext context) => new RegisterPage(),

      },
    );
  }

}

