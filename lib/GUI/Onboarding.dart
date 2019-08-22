import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

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
        appBar: AppBar(
          title: Center(child: new Text('App bar')),
          //
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Tammara Tariq'),
                accountEmail: Text('tammara.alhashimy90@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.redAccent,
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
        body:new Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding : EdgeInsets.only(top:MediaQuery.of(context).size.width / 4)),
              new Icon(Icons.notifications_paused,
              size: MediaQuery.of(context).size.width / 3,
                ),
              Padding(padding : EdgeInsets.only(top:MediaQuery.of(context).size.width / 11)),
              Text('أهلاً وسهلاً ',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 14,

              ),
              ),
              Padding(padding : EdgeInsets.only(top:MediaQuery.of(context).size.width / 26,

              )),
              Text('مرحباً بك في تطبيق Kar يضم عدد من الايدي العاملة لكافة التخصصات في أربيل  ',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                ),
                textAlign: TextAlign.center,
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:EdgeInsets.only(top: MediaQuery.of(context).size.width / 6,
                      right:MediaQuery.of(context).size.width / 15,
                  left:MediaQuery.of(context).size.width / 15,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 7,
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blue[400],
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () {Navigator.of(context).pushNamed('/LoginPage');},
                        child: Text("إضافة حرفي",
                            textAlign: TextAlign.center,
                            style: style.copyWith(
                                color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    )
                    //onPressed: () {Navigator.of(context).pushNamed('/LoginPage');}
                  ),
                ),
              )

            ],
          ),
        )
      ),
    );
  }



  Future<List> getData() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
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
                    title: new Center(child: new Text('خدمات الدهان')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('التنظيفات')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('خدمات كهربائية')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('بناء مقاولات')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('التكييف والتبريد')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('ابواب - شبابيك')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('صيانة سيارات')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('خدمات نجارة')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('خدمات حدائق')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('خدمات تنجيد')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('خدمات لحام')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('خدمات نقل')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('الطعام')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
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
                    title: new Center(child: new Text('كاميرات مراقبة')),
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
                                        color: Colors.redAccent,

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
                body: new Center(
                  child: new Text(
                    'Loading ...',
                    style: TextStyle(fontSize: 33.0),
                  ),
                ),
              ),
            );
          }
        }
    );
  }
}
