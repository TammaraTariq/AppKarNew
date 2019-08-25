import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }

}

class HomeState extends State<Home>{

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:widgetBody() ,
      ),
    );
  }




  Widget widgetBody(){
    return ListView(
      children: <Widget>[
        new Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding : EdgeInsets.only(top:MediaQuery.of(context).size.width / 6,)),
              new Image.asset('img/bground.png',
              height: MediaQuery.of(context).size.width / 2.5,),
//              Icon(Icons.notifications_paused,
//                size: MediaQuery.of(context).size.width / 3,
//              ),
              Padding(padding : EdgeInsets.only(top:MediaQuery.of(context).size.width / 11)),
              Text('أهلاً وسهلاً ',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 14,

                ),
              ),
              Padding(padding : EdgeInsets.only(top:MediaQuery.of(context).size.width / 26,

              )
              ),
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
                        color: Colors.orange[400],
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
              ),


            ],
          ),
        ),
      ],

    );
  }
}