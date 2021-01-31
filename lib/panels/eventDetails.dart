import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class eventDetails extends StatelessWidget {
  final List eventData;
  eventDetails({this.eventData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          eventData[index]['name'].toUpperCase(),
                          style: kTextStyle(Colors.black, 15, FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.account_circle),
                              SizedBox(width: 5),
                              Text(
                                eventData[index]['slotTimeSize'].toString(),
                                style: kTextStyle(
                                    Colors.black, 15, FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                eventData[index]['sports']['name'],
                                style:
                                    kTextStyle(Colors.red, 15, FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              daysWidget(eventData[index]['dayOfWeeksOpen']),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.black87,
                                  ),
                                  SizedBox(width: 5),
                                  Text(eventData[index]['openTime'] +
                                      ' - ' +
                                      eventData[index]['closeTime']),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Cost: ' +
                                      eventData[index]['costPerSlot']
                                          .toString() +
                                      ' \u{20B9}',
                                  style: kTextStyle(
                                      Colors.black, null, FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 5),
                              GestureDetector(
                                onTap: () {},
                                child: Material(
                                  color: Colors.blue[100],
                                  elevation: 1.5,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 2),
                                    child: Row(
                                      children: [
                                        Icon(
                                            Icons.add_photo_alternate_outlined),
                                        SizedBox(width: 5),
                                        Text('View Gallery'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Image.network(
                            eventData[index]['sports']['iconBlackUrl'],
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

Widget daysWidget(List days) {
  List<Widget> list = new List<Widget>();
  for (var i = 0; i < days.length; i++) {
    list.add(Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
        ),
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.all(3),
        child: new Text(days[i])));
  }
  return new Row(children: list);
}
