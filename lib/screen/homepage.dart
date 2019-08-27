import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottom_Selected_index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black87,
        currentIndex: _bottom_Selected_index,
        onTap: (int index){
          setState(() {
            _bottom_Selected_index = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home) , 
            title: Text("Home")
          ) , 
          new BottomNavigationBarItem(icon: Icon(Icons.verified_user) ,
          title: Text("Profile"))
        ],
      ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.black),
        ),
        body: MainContent());
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Explore",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.2,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: new Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.deepOrangeAccent),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                Icons.drive_eta,
                                color: Colors.white,
                              ),
                              new Text(
                                "Cab",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                      height: 100.0,
                      child: new Column(
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.only(bottom: 2.5, right: 2.5),
                            child: new Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(4.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Icon(
                                    Icons.cake,
                                    color: Colors.white,
                                  ),
                                  new Text(
                                    "Classifed",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                            child: new Padding(
                              padding: EdgeInsets.only(top: 2.5, right: 2.5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(4.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: new Icon(
                                        Icons.security,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: new Text(
                                        "Classifed",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                      height: 100.0,
                      child: new Column(
                        children: <Widget>[
                          Expanded(
                            child: new Padding(
                              padding: EdgeInsets.only(bottom: 2.5, left: 2.5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(4.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.account_balance,
                                      color: Colors.white,
                                    ),
                                    new Text(
                                      "Classifed",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: new Padding(
                              padding: EdgeInsets.only(top: 2.5, left: 2.5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(4.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.art_track,
                                      color: Colors.white,
                                    ),
                                    new Text(
                                      "JOB",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              new SizedBox(
                height: 16.0,
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    "Popular trending",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700),
                  )),
                  new Expanded(
                      child: new Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.end,
                  ))
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: new Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(4.0),
                                image: new DecorationImage(
                                    image: NetworkImage(
                                        "https://in.bmscdn.com/nmcms/media-base-freakout-gaming-zone-2018-8-16-t-17-51-23.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            "Play station",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: new Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(4.0),
                                image: new DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1558981420-c532902e58b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            "Play station",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: new Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(4.0),
                                image: new DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCmi_WPoccODqCr5s11D5Ec_mjVr-UqZChIN-1FJCBF-IjfrH4"),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            "Play station",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  new Expanded(
                      child: new Text(
                    "Popular trending",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700),
                  )),
                  new Expanded(
                      child: new Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.end,
                  ))
                ],
              ),
              new SizedBox(
                height: 12.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: new Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(4.0),
                                image: new DecorationImage(
                                    image: NetworkImage(
                                        "https://in.bmscdn.com/nmcms/media-base-freakout-gaming-zone-2018-8-16-t-17-51-23.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            "Play station",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: new Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(4.0),
                                image: new DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1558981420-c532902e58b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            "Play station",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: new Container(
                      height: 140.0,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: new BorderRadius.circular(4.0),
                                image: new DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCmi_WPoccODqCr5s11D5Ec_mjVr-UqZChIN-1FJCBF-IjfrH4"),
                                    fit: BoxFit.cover)),
                          ),
                          new Text(
                            "Play station",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
