import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/timeTableTabIndexProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/friday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/monday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/saturday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/thursday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/tuesday.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/wednesday.dart';

class TimeTable extends StatefulWidget {
  var tableIndex;
  TimeTable({Key key, this.tableIndex}) : super(key: key);

  @override
  _TimeTableState createState() => _TimeTableState();
}

Color PrimaryColor = Color.fromRGBO(2, 97, 115, 1);

class _TimeTableState extends State<TimeTable> with TickerProviderStateMixin {
  TabController _tabController;
  AnimationController percentageAnimationController;
  int _active;

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: 1,
      initialIndex: widget.tableIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color(0xfff6f7f9),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(2, 97, 115, 1),
          title: Text(
            "Time table",
            style: TextStyle(color: Colors.white70),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            isScrollable: true,
            onTap: (index) {
              setState(() {
                switch (index) {
                  case 0:
                    PrimaryColor = Colors.orange[300];
                    break;
                  case 1:
                    PrimaryColor = Color(0xff3f51b5);
                    break;
                  case 2:
                    PrimaryColor = Color(0xffe91e60);
                    break;
                  case 3:
                    PrimaryColor = Color(0xff9d27b0);
                    break;
                  case 4:
                    PrimaryColor = Color(0xff2196f3);
                    break;

                  default:
                    Color.fromRGBO(2, 97, 115, 1);
                }
              });
            },
            labelStyle: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
            ),
            tabs: <Widget>[
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weekDays.length,
                itemBuilder: (context, i) => Tab(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _active = i;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      width: 51,
                      decoration: BoxDecoration(
                        color:
                            _active == i ? MyColors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.only(right: 25),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "${i + 1}",
                            style:
                                Theme.of(context).textTheme.display1.copyWith(
                                      color: _active == i
                                          ? Colors.white
                                          : MyColors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            "${weekDays[i]}",
                            style: TextStyle(
                              color:
                                  _active == i ? Colors.white : MyColors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBarView(
              children: <Widget>[
                MondayTimeTable(),
                TuesdayTimeTable(),
                WednesdayTimeTable(),
                ThursdayTimeTable(),
                FridayTimeTable(),
                SaturdayTimeTable(),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}

class WeekDaysList extends StatefulWidget {
  const WeekDaysList({
    Key key,
  }) : super(key: key);

  @override
  _WeekDaysListState createState() => _WeekDaysListState();
}

class _WeekDaysListState extends State<WeekDaysList> {
  int _active;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weekDays.length,
        itemBuilder: (context, i) => GestureDetector(
          onTap: () {
            setState(() {
              _active = i;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 51,
            decoration: BoxDecoration(
              color: _active == i ? MyColors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.only(right: 25),
            child: Column(
              children: <Widget>[
                Text(
                  "${i + 1}",
                  style: Theme.of(context).textTheme.display1.copyWith(
                        color: _active == i ? Colors.white : MyColors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "${weekDays[i]}",
                  style: TextStyle(
                    color: _active == i ? Colors.white : MyColors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyColors {
  static const Color blue = Color(0xff0021ac),
      pink = Color(0xfffbe4ee),
      red = Color(0xffe7576b);
}

List<String> weekDays = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
