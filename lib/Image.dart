import 'package:flutter/material.dart';

class OpenImage extends StatefulWidget {
  @override
  _OpenImageState createState() => _OpenImageState();
}

class _OpenImageState extends State<OpenImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://s01.sgp1.cdn.digitaloceanspaces.com/article/55024-oxjscbqerf-1564978078.jpeg"))),
            ),

            SizedBox(height: 10,),
            Row(
              children: <Widget>[
               Expanded(child:
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    " MINDBLOWING Beatboxer Makes Everyone Dance ",
                    style: TextStyle(color: Colors.black87,fontSize: 15,
                    ),
                  ),
                ),),
                IconButton(icon: Icon(Icons.keyboard_arrow_up), onPressed: null)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                "66,898 Views",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Row(children: <Widget>[
                IconButton(icon: Icon(Icons.favorite), onPressed: null),
                IconButton(icon: Icon(Icons.share), onPressed: null),
                IconButton(icon: Icon(Icons.flag), onPressed: null),
                IconButton(icon: Icon(Icons.save), onPressed: null),


              ],),
            ),
            SizedBox(height: 20,),
            Container(
              height: 600,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, position) {
                    return Row(
                      children: <Widget>[

                           Container(
                            margin: EdgeInsets.all(5),
                            width: 130,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/sin4.jpeg"),
                              ),
                            ),
                          ),

                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text(
                                " Talento-Goa's Got Talent",
                                style: TextStyle(fontSize: 15,color: Colors.black),

                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 10.0, bottom: 10.0),
                                child: Text(
                                  "66,898 Views",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
