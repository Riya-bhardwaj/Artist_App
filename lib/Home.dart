import 'package:flutter/material.dart';
import 'package:project_artist/Image.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position) {
          return Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            GestureDetector(
              child: Container(
              height: 250,
              width: screenWidth,
              child: Image.network("https://s01.sgp1.cdn.digitaloceanspaces.com/article/55024-oxjscbqerf-1564978078.jpeg"),

                ),
              onTap: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OpenImage()));
              }
              ,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                " MINDBLOWING Beatboxer Makes Everyone Dance On GOa's Got Talent",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                "66,898 Views",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],);
          },
      ),
    );
  }
}
