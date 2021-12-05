import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/helper/dashboardData.dart';
import 'package:skulify_app/src/models/dashBoardCardsModel.dart';
import 'package:skulify_app/src/provider/aggregateAttendanceProvider.dart';
import 'package:skulify_app/src/provider/timeTableTabIndexProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/announcements.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/attendance.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/examsAvailable.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/examsCardTile.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/homework.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/testMakrs.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/monday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/timeTable.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/tuesday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/wednesday.dart';

class DashBoardCards1 extends StatefulWidget {
  @override
  _DashBoardCards1State createState() => _DashBoardCards1State();
}

class _DashBoardCards1State extends State<DashBoardCards1> {
  List<DashBCardModel> mycards = new List<DashBCardModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mycards = getAllDBCards();
  }

  @override
  Widget build(BuildContext context) {
    final myAttendancePercent =
        Provider.of<AggregateAttendanceProvider>(context, listen: false);
    final timeTableIndex =
        Provider.of<TimeTableTabIndexProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Announcements(),
                        ));
                  },
                  child: Card(
                    elevation: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(2, 97, 115, 1),
                      ),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 30,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(17),
                                          bottomRight: Radius.circular(17))),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      mycards[0].tag,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        // backgroundColor: Colors.orange[500],
                                      ),
                                    ),
                                  ),
                                )),
                            Image.asset(
                              mycards[0].imageUrl,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[0].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  elevation: 7,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeTable(
                                    tableIndex:
                                        timeTableIndex.getTTableTabIndex(),
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 97, 115, 1),
                          borderRadius: BorderRadius.circular(4)),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 30,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(17),
                                          bottomRight: Radius.circular(17))),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "   " + mycards[1].tag + "   ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            ),
                            Image.asset(
                              mycards[1].imageUrl,
                              color: Colors.white70,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[1].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  elevation: 7,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Attendance(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 97, 115, 1),
                          borderRadius: BorderRadius.circular(4)),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 30,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(17),
                                        bottomRight: Radius.circular(17))),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          myAttendancePercent
                                              .getAggregateAttendance()
                                              .toString(),
                                          // mycards[2].tag,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('%',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Image.asset(
                              mycards[2].imageUrl,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[2].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: GestureDetector(
                  child: Card(
                    elevation: 7,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homework(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(2, 97, 115, 1),
                            borderRadius: BorderRadius.circular(4)),
                        width: MediaQuery.of(context).size.width / 2.12,
                        height: 120,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 30,
                                    width: 38,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(17),
                                            bottomRight: Radius.circular(17))),
                                    child: Container(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        mycards[3].tag,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                              ),
                              Image.asset(
                                mycards[3].imageUrl,
                                height: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  mycards[3].title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    backgroundColor:
                                        Color.fromRGBO(2, 97, 115, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  elevation: 7,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestMarks(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 97, 115, 1),
                          borderRadius: BorderRadius.circular(4)),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 30,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(17),
                                          bottomRight: Radius.circular(17))),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      mycards[4].tag,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            ),
                            Image.asset(
                              mycards[4].imageUrl,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[4].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExamsAvailable())),
                  child: Card(
                    elevation: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color.fromRGBO(2, 97, 115, 1),
                      ),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 30,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(17),
                                          bottomRight: Radius.circular(17))),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      mycards[5].tag,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            ),
                            Image.asset(
                              mycards[5].imageUrl,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[5].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
