import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class OpenImage extends StatefulWidget {
  @override
  _OpenImageState createState() => _OpenImageState();
}

class _OpenImageState extends State<OpenImage> {
  VideoPlayerController playerController;
  Future<void> _initializeVideoPlayerFuture;
  VoidCallback listener;

  @override
  void initState() {

    playerController = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );


    _initializeVideoPlayerFuture = playerController.initialize();


    playerController.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {

    playerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[



            Stack(children: <Widget>[
              FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {

                    return AspectRatio(
                      aspectRatio: playerController.value.aspectRatio,

                      child: VideoPlayer(playerController),
                    );
                  } else {

                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
              Positioned(
                top: 180/ 2,
                left: screenWidth * .40,
                child:IconButton(icon:
                Icon(
                  playerController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,size: 40,color: Colors.white,
                ),onPressed: (){


                    setState(() {

                      if (playerController.value.isPlaying) {
                        playerController.pause();
                      } else {
                           // If the video is paused, play it.
                      playerController.play();

                         }} );

                },
                )
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      " MINDBLOWING Beatboxer Makes Everyone Dance ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                IconButton(icon: Icon(Icons.keyboard_arrow_up), onPressed: null)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                "66,898 Views",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.favorite), onPressed: null),
                  IconButton(icon: Icon(Icons.share), onPressed: null),
                  IconButton(icon: Icon(Icons.flag), onPressed: null),
                  IconButton(icon: Icon(Icons.save), onPressed: null),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
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
