import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:newappkar/GUI/Home.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OnBoardingState();
  }
}

class _OnBoardingState extends State<OnBoarding> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: new Drawer(
            child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text('Leanne Graham'),
                  accountEmail: Text('07700000000'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.orange[400],
                    child: Text('T'),
                  ),
                ),
                ListTile(
                  title: Text(
                    'خدمات الدهان',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => widgetKarData())),
                ),
                ListTile(
                  title: Text(
                    'التنظيفات',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataClean())),
                ),

                ListTile(
                  title: Text(
                    'خدمات كهربائية',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataElect())),
                ),

                ListTile(
                  title: Text(
                    'بناء مقاولات',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataBuild())),
                ),

                ListTile(
                  title: Text(
                    'التكييف والتبريد',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataAir())),
                ),


                ListTile(
                  title: Text(
                    'ابواب - شبابيك',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataBoor())),
                ),


                ListTile(
                  title: Text(
                    'صيانة سيارات',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataCar())),
                ),

                ListTile(
                  title: Text(
                    'خدمات نجارة',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataCarp())),
                ),

                ListTile(
                  title: Text(
                    'خدمات حدائق',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataGar())),
                ),

                ListTile(
                  title: Text(
                    'خدمات تنجيد',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataUph())),
                ),

                ListTile(
                  title: Text(
                    'خدمات لحام',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataWeld())),
                ),

                ListTile(
                  title: Text(
                    'خدمات نقل',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataTrans())),
                ),

                ListTile(
                  title: Text(
                    'الطعام',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataFood())),
                ),

                ListTile(
                  title: Text(
                    'كاميرات مراقبة',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widgetKarDataCam())),
                ),

                Divider(
                  height: 10,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'حول التطبيق',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  trailing: Icon(Icons.info_outline),
                  onTap: () => debugPrint('About!'),
                ),


                Divider(
                  height: 10,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'اللغة',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  trailing: Icon(Icons.language),
                  onTap: () => debugPrint('Language!'),
                ),


                Divider(
                  height: 10,
                  color: Colors.deepPurple,
                ),
                ListTile(
                  title: Text(
                    'إغلاق',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                  trailing: Icon(Icons.close),
                  onTap: () => Navigator.of(context).pop(),
                ),


              ],
            ),
          ),
        appBar: AppBar(
          title: new Text('الرئيسية',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                color: Colors.white
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),

          //
        ),

       body:Home()
      ),
    );
  }



  Future<List> getData() async {
    String myUrl = 'https://karapp.000webhostapp.com/api/apiList';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }

  Widget widgetKarData() {
    return new FutureBuilder(
        future: getData(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title: new Text('خدمات الدهان',
                     style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                    iconTheme: IconThemeData(
                      color: Colors.white
                    ),
                  ),
                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    '${content[position]['id']}',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['pname'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['description']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
//                                  subtitle: Text(
//                                    content[position]['phone'],
//                                    style: TextStyle(
//                                      fontSize: MediaQuery.of(context).size.width /20,
//                                    ),
//                                  ),
                                  trailing: Icon(Icons.phone),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      height:
                                          MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
        );
  }

  Future<List> getDataClean() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }

  Widget widgetKarDataClean() {
    return new FutureBuilder(
        future: getDataClean(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('التنظيفات',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }

  Future<List> getDataElect() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }

  Widget widgetKarDataElect() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('خدمات كهربائية',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }




  Future<List> getDataBuild() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }

  Widget widgetKarDataBuild() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('بناء مقاولات',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }


  Future<List> getDataAir() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataAir() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title: new Text('التكييف والتبريد',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }


  Future<List> getDataBoor() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataBoor() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title: new Text('ابواب - شبابيك',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }



  Future<List> getDataCar() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataCar() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('صيانة سيارات',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }


  Future<List> getDataCarp() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataCarp() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  Text('خدمات نجارة',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }


  Future<List> getDataGar() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataGar() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('خدمات حدائق',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          }else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }



  Future<List> getDataUph() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataUph() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title: new Text('خدمات تنجيد',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          }else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }




  Future<List> getDataWeld() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataWeld() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('خدمات لحام',
                        style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.white
                    ),
                    ),

                    iconTheme: IconThemeData(
                        color: Colors.white
                    ),
                  ),


                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }

  Future<List> getDataTrans() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataTrans() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title: new Text('خدمات نقل',
                        style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.white
                    ),
                    ),

                    iconTheme: IconThemeData(
                        color: Colors.white
                    ),
                  ),


                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          }else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }


  Future<List> getDataFood() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataFood() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  new Text('الطعام',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),


                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }




  Future<List> getDataCam() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }
  Widget widgetKarDataCam() {
    return new FutureBuilder(
        future: getDataElect(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  appBar: new AppBar(
                    title:  Text('كاميرات مراقبة',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Colors.white
                      ),
                    ),

                      iconTheme: IconThemeData(
                          color: Colors.white
                      ),
                    ),

                  body: new ListView.builder(
                    padding: EdgeInsets.only(top:20.0),
                    itemCount: content.length,
                    // ignore: missing_return
                    itemBuilder: (BuildContext context, int position) {
                      return Center(
                        child: Card(
                          margin: EdgeInsets.all(12),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                child: new ListTile(
                                  leading: CircleAvatar(

                                    child: Icon(
                                      Icons.person,
                                      size: 33.0,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.deepPurpleAccent,
                                    radius: 50.0,
                                  ),
                                  title: Text(
                                    content[position]['name'],
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  subtitle: Text(
                                    content[position]['company']['name'],
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                EdgeInsets.only(left: 30.0, right: 30.0),
                                child: new ListTile(

                                  title: Text(
                                    '${content[position]['address']['city']}',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),

                                  ),
                                  subtitle: Text(
                                    content[position]['phone'],
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width /20,
                                    ),
                                  ),
                                ),
                              ),

                              ButtonTheme.bar(
                                padding: EdgeInsets.all(10.0),
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    new Padding(padding: EdgeInsets.all(10.0)),

                                    SizedBox(
                                      width:
                                      MediaQuery.of(context).size.width / 4,
                                      height:
                                      MediaQuery.of(context).size.width / 9,
                                      child: RaisedButton(
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: new Text(
                                          'اتصال',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onPressed: () => debugPrint('callling'),
                                        color: Colors.green,

                                      ),
                                    ),
//                                    new Padding( padding: EdgeInsets.all(10.0)),
//                                    IconButton(
//                                      icon: Icon(Icons.done_all),
//
//                                      onPressed: ()=>debugPrint('hello') ,
//                                    ),
                                    new Padding(padding: EdgeInsets.all(10.0)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        }
    );
  }
}
