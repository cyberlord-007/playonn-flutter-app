import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../service/Networking.dart';

class ListScreen extends StatefulWidget {
  static String id = 'list_screen';

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
  }

  void fetchData() async {
    NetworkHelper networkHelper = NetworkHelper(
        'http://playonnuat-env.eba-ernpdw3w.ap-south-1.elasticbeanstalk.com/api/v1/establishment/test/list?offset=0&limit=10');
    var fetchedData = await networkHelper.getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Welcome'),
    );
  }
}
