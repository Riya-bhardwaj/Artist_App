import 'package:flutter/material.dart';
import 'package:project_artist/Home.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
        body: SafeArea(
          child: Stack(
            children: <Widget>[

              ClipPath(

                child: Container(

                  decoration: BoxDecoration(
                    // Box decoration takes a gradient
                    gradient: LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0, .6],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Color(0xFFFE8853),
                        Color(0xFFFD7267),




                      ],
                    ),),
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 2.8,),
                clipper: BottomWaveClipper(),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: <Widget>[
                          GestureDetector(

                            child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                            onTap: (){
                              Navigator.pop(context);
                            },

                          ),
                          SizedBox(width: 80.0,),
                          Text("Register here",style: TextStyle(fontSize: 20.0,color: Colors.white),),

                        ],),


                        SizedBox(
                          height: MediaQuery.of(context).size.height/15,
                        ),


                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset("assets/new.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0,0,5,0),
                          child: Material(
                            elevation: 10.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "UserName",
                                    hintStyle:
                                    TextStyle(color: Colors.black45, fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0,0,5,0),
                          child: Material(
                            elevation: 10.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email Address",
                                    hintStyle:
                                    TextStyle(color: Colors.black45, fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0,0,5,0),
                          child: Material(
                            elevation: 10.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5.0, bottom:5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                    TextStyle(color: Colors.black45, fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0,0,5,0),
                          child: Material(
                            elevation: 10.0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: " Confirm Password",
                                    hintStyle:
                                    TextStyle(color: Colors.black45, fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                        onTap: () {
                               Navigator.push(
                              context,
                            MaterialPageRoute(
                             builder: (BuildContext context) => Home()));
                              },
                          child:
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          alignment: Alignment.center,
                          width: screenWidth / 1.7,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            gradient: LinearGradient(colors: [
                              Colors.blueGrey,
                              Colors.deepOrangeAccent,
                            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                          ),
                          child: Text("Regiter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                         )
                        ),
                        SizedBox(
                          height: 10,
                        ),



                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();


    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}