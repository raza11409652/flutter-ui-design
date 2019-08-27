import 'package:flutter/material.dart';
class Logo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Colors.blue

          ),
          child: Icon(Icons.local_offer ,
            color: Colors.white,
          ),
        ) ,
        new Container(
          margin:new EdgeInsets.only(right: 60.0 , top: 50.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.amberAccent,
          ),
          child: Icon(Icons.add_location , color: Colors.white,),
        ) ,
        new Container(
          margin:new EdgeInsets.only(left: 30.0 , top: 80.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.redAccent,
          ),
          child: Icon(Icons.local_airport , color: Colors.white,),
        ) ,
        new Container(
          margin:new EdgeInsets.only(left: 95.0 , top: 35.0),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.greenAccent,
          ),
          child: Icon(Icons.directions_car, color: Colors.white,),
        ) ,
      ],
    );
  }

}