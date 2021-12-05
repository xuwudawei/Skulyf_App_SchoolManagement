import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class AllTimeCardsTile extends StatelessWidget {
  final lessonTitle, attendancePercentage, timeSlot, imageUrl, attendanceColor;
  AllTimeCardsTile({
    this.lessonTitle,
    this.attendancePercentage,
    this.timeSlot,
    this.imageUrl,
    this.attendanceColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 4.0,
          bottom: 5,
          top: 4.0,
          right: 4.0,
        ),
        child: Card(
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white
                // color: Color.fromRGBO(98, 110, 212, 1),
                ),
            height: MediaQuery.of(context).size.height / 6.5,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Card(
                            // leading: Icon(Icons.album),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(2, 97, 115, 1)
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(2.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      imageUrl,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: SizedBox(
                                      width: 75,
                                      height: 20,
                                      child: Text(
                                        lessonTitle,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey.withOpacity(1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 20,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: MediaQuery.of(context).size.height / 32,
                              // ),
                              Text(
                                timeSlot,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, left: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                // child: Text(
                                //   "Teacher" + "  -        " + "Anshul",
                                //   style: TextStyle(
                                //       fontSize: 14.0, color: Colors.black
                                //       // color: Colors.white.withOpacity(0.8),
                                //       ),
                                // ),
                                ),
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Attendance",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black.withOpacity(0.8)
                                          // color: Colors.white.withOpacity(0.8),
                                          ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Text(
                                      "Present",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                              Colors.lightGreen.withOpacity(0.8)
                                          // color: Colors.white.withOpacity(0.8),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                            bottom: 9,
                          ),
                          // child: FaIcon(
                          //   FontAwesomeIcons.chevronCircleUp,
                          //   color: HexColor(attendanceColor).withOpacity(0.6),
                          //   size: 14,
                          // ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
