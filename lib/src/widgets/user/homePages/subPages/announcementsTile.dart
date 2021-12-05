import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/messsgesProvider.dart';

class AnnouncementsTile extends StatelessWidget {
  final tag, content, date;
  AnnouncementsTile({this.content, this.date, this.tag});

  @override
  Widget build(BuildContext context) {
    var selectedNav = 0;
    void _onItemTapped(int index) {
      BotomNav bot = Provider.of<BotomNav>(context, listen: false);
      Navigator.pop(context);
      bot.setSave(index);
      // setState(() {
      //   selectedNav = index;
      // });
    }

    BotomNav botom = Provider.of<BotomNav>(context, listen: false);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
        child: Card(
          elevation: 6,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(2)),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 14.0, left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
                            child: Text(
                              tag,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Container(
                                child: Text(
                              date,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 14),
                  child: Text(
                    content,
                    style: TextStyle(
                      height: 1.3,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(
                        0.6,
                      ),
                      // fontWeight: FontWeight.w400,
                    ),
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
