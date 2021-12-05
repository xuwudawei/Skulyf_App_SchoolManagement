import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/MondayTTableProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashboard.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/quickQuiz.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/rms.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/switchUser.dart';

var color = Color.fromRGBO(255, 64, 129, 1);

class MondayTimeTable extends StatefulWidget {
  @override
  _MondayTimeTableState createState() => _MondayTimeTableState();
}

class _MondayTimeTableState extends State<MondayTimeTable> {
  @override
  var selectedNav = 0;

  List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    RMS(),
    SwitchUser(),
    QuickQuiz(),
  ];

  void _onItemTapped(int index) {
    BotomNav bot = Provider.of<BotomNav>(context, listen: false);
    Navigator.of(context).pop();
    bot.setSave(index);
    // setState(() {
    //   selectedNav = index;
    // });
  }

  @override
  Widget build(BuildContext context) {
    final myMondayTTable =
        Provider.of<MondayTTableProvider>(context, listen: false);
    BotomNav botom = Provider.of<BotomNav>(context);
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //crossAxisSpacing: 1,
          //mainAxisSpacing: 1,
        ),
        scrollDirection: Axis.vertical,
        itemCount: myMondayTTable.getCardList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 6,
            child: Container(
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color.fromRGBO(98, 110, 212, 1),
              ),
              //height: MediaQuery.of(context).size.height / 6.5,
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
                                        color: Color.fromRGBO(121, 132, 218, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        myMondayTTable
                                            .getCardList[index].imageUrl,
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
                                          myMondayTTable
                                              .getCardList[index].lessonTitle,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          49,
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
                                  myMondayTTable.getCardList[index].timeSlot,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Attendence",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                              //bottom: 9,
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.chevronCircleUp,
                              color: HexColor(myMondayTTable
                                  .getCardList[index].attendanceColor),
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
