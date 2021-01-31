import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  static String id = 'list_screen';

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Welcome'),
    );
  }
}
