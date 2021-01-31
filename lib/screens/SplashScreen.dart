import 'package:flutter/material.dart';
import './ListScreen.dart';
import 'package:delayed_display/delayed_display.dart';

class SplashScreen extends StatelessWidget {
  static String id = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/splash.gif',
            ),
            DelayedDisplay(
              delay: Duration(seconds: 5),
              child: Material(
                elevation: 4.0,
                color: Colors.blue[500],
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ListScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  splashColor: Colors.white10,
                  child: Text(
                    'Get Started...',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
