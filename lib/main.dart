import 'package:flutter/material.dart';
import 'logo/Logo.dart';
import 'screen/login.dart';

void main()=>runApp(MainApp());

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "App UI DEsign",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }

}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Logo(),
            new Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: new Text(
                    "Company name" , style: new TextStyle(fontSize: 35.0  ),
                  ),
                )
              ],
            ) ,
            new Row(
              children: <Widget>[
                Expanded(

                child: Padding(
                  padding: const EdgeInsets.only(left:20.0 , right: 20.0 , bottom: 20.0 , top: 100.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>LoginPage())
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.black ,
                        borderRadius: new BorderRadius.circular(4.0) ,
                      ),
                      child: new Text("Sign In" ,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                    ),
                  ),

                ),
                ),

              ],
            ) ,
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0 , left: 20.0 ,
                    right: 20.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue ,
                        borderRadius: new BorderRadius.circular(4.0) ,
                      ),
                      child: new Text("Facebook" ,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0 , left: 10.0 ,
                        right: 20.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.red ,
                        borderRadius: new BorderRadius.circular(4.0) ,
                      ),
                      child: new Text("google" ,style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            ) ,

          ],
        ),
      ),
    );
  }

}
