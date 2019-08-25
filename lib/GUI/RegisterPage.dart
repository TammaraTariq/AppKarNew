import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final List<String> dropValueList = [

    "خدمات الدهان",
    "التنظيفات",
    "خدمات كهربائية",
    "بناء مقاولات",
    "التكييف والتبرييد",
    "ابواب - شبابيك",
    "صيانة سيارات",
    "خدمات نجارة",
    "خدمات حدائق",
    "خدمات لحام",
    "خدمات نقل",
    "الطعام",
    "كاميرات مراقبة"
  ];
  String dropValue = "خدمات الدهان";
  void _newItemSelected(String newValueSelected) {
    setState(() {
      dropValue = newValueSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "ألاسم",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      keyboardType: TextInputType.text,
    );

    final phoneField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "رقم الهاتف",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      keyboardType: TextInputType.phone,
    );
    final signUpButom = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange[600],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: ()  {},
        child: Text("تسجيل",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );



    final addressField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "العنوان",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );



    final dropDownKar = DropdownButton<String>(
      value: dropValue,
      onChanged: (String newValueSelected) {
        _newItemSelected(newValueSelected);
      },
      items: dropValueList.map((String dropDownItemsKar) {
        return DropdownMenuItem<String>(
          value: dropDownItemsKar,
          child: Text(dropDownItemsKar,
          style: style,),
        );
      }).toList(),
        isExpanded: true,
        iconSize: 35,
      elevation: 0,

    );

    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: new Scaffold(
        appBar: AppBar(
          elevation: 0,
          title:Text("تسجيل",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20.0,
            color: Colors.white
          ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
        ),


        body: ListView(
          children: <Widget>[
            new Center(
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24, top: 30),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width / 3,
                      child: Image.asset(
                        "img/worker.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 17),
                    nameField,

                    SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 17),
                    phoneField,
                    SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 17),
                    addressField,
                    SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 17),

                    Container(

                      padding: EdgeInsets.only(left: 25.0,right: 25.0),
                        child: SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.width / 10,
                            child: dropDownKar,
                        ),

                       ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width / 17,
                    ),
                    signUpButom,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
