import 'package:flutter/material.dart';
import '../service/Networking.dart';
import '../panels/eventDetails.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ListScreen extends StatefulWidget {
  static String id = 'list_screen';

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List eventData;

  void fetchData() async {
    NetworkHelper networkHelper = NetworkHelper(
        'http://playonnuat-env.eba-ernpdw3w.ap-south-1.elasticbeanstalk.com/api/v1/establishment/test/list?offset=0&limit=10');
    var fetchedData = await networkHelper.getEvents();
    setState(() {
      eventData = fetchedData;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: SafeArea(
        child: eventData == null
            ? Center(child: SpinKitCubeGrid(color: Colors.white, size: 50))
            : Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(
                          child: Text(
                            'PlayOnn Arenas',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      eventDetails(
                        eventData: eventData,
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
