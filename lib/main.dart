import 'package:flutter/material.dart';

import 'package:project_artist/SignIn.dart';
void main()
{
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Artist App",
    theme: ThemeData(primaryColor: Colors.red),
    debugShowCheckedModeBanner: false,
    home: SignIn(),
    );
  }
}
