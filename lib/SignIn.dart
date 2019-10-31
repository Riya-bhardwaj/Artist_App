import 'package:flutter/material.dart';
import 'package:project_artist/Home.dart';
import 'package:project_artist/Signup.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(



      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(height: screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFFF9844),
                Color(0xFFFE8853),
                Color(0xFFFD7267),],
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 40,),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/lightbulb.png"),
                  // backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 45.0,
                ),

                Material(
                  elevation: 10.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 14)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Material(
                  elevation: 10.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 14)),
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
                  child: Container(margin: EdgeInsets.only(top: 70),
                    alignment: Alignment.center,
                    width: screenWidth / 1.7,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      gradient: LinearGradient(
                          colors: [Colors.blueGrey,
                          Colors.deepOrangeAccent,],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: Text("LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                new Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Signup()));
                    },
                    child:   Container(
                      alignment: Alignment.center,
                      width: screenWidth / 1.7,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        gradient: LinearGradient(
                            colors: [Colors.blueGrey,
                            Colors.deepOrangeAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Text("REGISTER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                    ),

                  ),
                ),
                new SizedBox(
                  height: 15.0,
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }
}
