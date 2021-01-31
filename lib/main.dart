import 'package:flutter/material.dart';
import 'package:play_onn/screens/GalleryScreen.dart';
import 'package:play_onn/screens/ListScreen.dart';
import './screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Onn',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        ListScreen.id: (context) => ListScreen(),
      },
    );
  }
}
