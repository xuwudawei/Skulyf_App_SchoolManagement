import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  final double _borderRadius = 24;
  // var items = [
  //   PlaceInfo(
  //     'English',
  //     Color(0xff6DC8F3),
  //     Color(0xff73A1F9),
  //     1,
  //     '',
  //     'Subject Teacher:',
  //   ),
  //   PlaceInfo('Hindi', Color(0xffFFB157), Color(0xffFFA057), 3.7, '',
  //       'Subject Teacher'),
  //   PlaceInfo('Maths', Color(0xffFF5B95), Color(0xffF8556D), 4.5, '',
  //       'Subject Teacher:'),
  //   PlaceInfo('Science', Color(0xffD76EF5), Color(0xff8F7AFE), 4.1, '',
  //       'Subject Teacher:'),
  //   PlaceInfo('Computer Science', Color(0xff42E695), Color(0xff3BB2B8), 4.2, '',
  //       'Subject Teacher:'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff6f7f9),
        //backgroundColor: Color.fromRGBO(2, 97, 115, 1),
        centerTitle: true,
        title: Text(
          'Today\'s  HomeWork ',
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xffFFB157), Color(0xffFFA057)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffFFA057),
                              blurRadius: 10,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xffFFB157), Color(0xffFFA057)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/english.png',
                              height: 54,
                              width: 54,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "English",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Subject Teacher: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xffD76EF5), Color(0xff8F7AFE)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff8F7AFE),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xffD76EF5), Color(0xff8F7AFE)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/hindi.png',
                              color: Colors.white,
                              height: 54,
                              width: 54,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Hindi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Subject Teacher:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xffFF5B95), Color(0xffF8556D)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF8556D),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xffFF5B95), Color(0xffF8556D)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/computer.png',
                              height: 54,
                              width: 54,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Computer Science",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Subject Teacher: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xff42E695), Color(0xff3BB2B8)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff42E695),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xff42E695), Color(0xff3BB2B8)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/science.png',
                              height: 54,
                              width: 54,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Science",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Subject Teacher: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xffFFB157), Color(0xffFFA057)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffFFA057),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xffFFB157), Color(0xffFFA057)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/sst.png',
                              height: 54,
                              width: 54,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Social Science",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Subject Teacher: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xffD76EF5), Color(0xff8F7AFE)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff8F7AFE),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xffD76EF5), Color(0xff8F7AFE)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/pie.png',
                              height: 54,
                              width: 54,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Maths',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Subject Teacher:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => Login(),
                        //     ));
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_borderRadius),
                          gradient: LinearGradient(
                              colors: [Color(0xffFF5B95), Color(0xffF8556D)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF8556D),
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            Color(0xffFF5B95), Color(0xffF8556D)),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              'assets/images/science.png',
                              height: 64,
                              width: 64,
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Computer Science",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Subject Teacher: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    // Icon(
                                    //   Icons.location_on,
                                    //   color: Colors.white,
                                    //   size: 16,
                                    // ),
                                    // SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Flexible(
                                    //   child: Text(
                                    //     items[index].,
                                    //     style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontFamily: 'Avenir',
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )
                                // Text(
                                //   items[index].rating.toString(),
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontFamily: 'Avenir',
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700),
                                // ),
                                //    RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceInfo {
  final String name;
  final String category;
  final String location;
  final double rating;
  final Color startColor;
  final Color endColor;

  PlaceInfo(this.name, this.startColor, this.endColor, this.rating,
      this.location, this.category);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class RatingBar extends StatelessWidget {
  final double rating;

  const RatingBar({Key key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(rating.floor(), (index) {
        return Icon(
          Icons.star,
          color: Colors.white,
          size: 16,
        );
      }),
    );
  }
}
