import 'package:flutter/material.dart';
import 'package:flutter_app/logo/Logo.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.black),
        ),
        body: Container(
          width: double.infinity,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Logo(),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Text(
                      "Company name",
                      style: new TextStyle(fontSize: 35.0),
                    ),
                  )
                ],
              ),
              new Padding(
                padding: EdgeInsets.all(20.0),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(labelText: "Email"),
                    ),
                    new TextField(
                      obscureText: true,
                      decoration: new InputDecoration(labelText: "Password"),
                    )
                  ],
                ),
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: GestureDetector(
                            onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>HomePage()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: new BorderRadius.circular(4.0),
                              ),
                              child: new Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                            ),
                        ),

                      )
                  ),
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Container(
                          child: Text("Forget your password ? ",
                            style: TextStyle(
                                fontSize: 16.0
                            ),),
                        ),)
                  ),
                ],
              ),
              Expanded(
                child: new Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 80.0 ,  horizontal: 0.0),
                      child: new Text("Create A New Account", style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
