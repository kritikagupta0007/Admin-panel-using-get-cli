//import 'package:ant_icons/ant_icons.dart';
//import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class AnalyticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1500;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      alignment: Alignment.topLeft,
      color: Colors.black12.withOpacity(0.03),
      child: Stack(alignment: Alignment.topLeft, children: [
        SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            // margin: EdgeInsets.only(
            //     left: 25.0, top: 90.0, right: 25.0, bottom: 12.5),
            child: new GridView.count(
              crossAxisCount: extraLargeScreenGrid
                  ? 4
                  : tabScreenGrid
                      ? 2
                      : 1,
              childAspectRatio: 5,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              padding: EdgeInsets.all(02.0),
              shrinkWrap: true,
              children: [
                Container(
                  child: Material(
                    elevation: 02.0,
                    borderRadius: BorderRadius.circular(03.0),
                    child: Container(
                      color: Color.fromARGB(153, 100, 180, 246),
                      height: 120.0,
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        'Revenue',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        '\$1000k',
                                        style: TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 120.0,
                            height: 120.0,
                            child: Icon(
                              Icons.monetization_on_outlined,
                              // AntIcons.dollar,
                              size: 50.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    elevation: 02.0,
                    borderRadius: BorderRadius.circular(03.0),
                    child: Container(
                      color: Color.fromARGB(202, 229, 115, 115),
                      height: 120.0,
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        'Total Orders',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        '1230',
                                        style: TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 120.0,
                            height: 120.0,
                            child: Icon(
                              Icons.tag,
                              //FeatherIcons.tag,
                              size: 50.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    elevation: 02.0,
                    borderRadius: BorderRadius.circular(03.0),
                    child: Container(
                      color: Color.fromARGB(206, 255, 184, 77),
                      height: 120.0,
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        'Messages',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        '608',
                                        style: TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 120.0,
                            height: 120.0,
                            child: Icon(
                              Ionicons.mail_outline,
                              size: 50.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    elevation: 02.0,
                    borderRadius: BorderRadius.circular(03.0),
                    child: Container(
                      color: Color.fromARGB(192, 121, 135, 203),
                      height: 120.0,
                      padding: EdgeInsets.all(0.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black12, width: 01.0),
                          borderRadius: BorderRadius.circular(03.0),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Customers',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          '2700k',
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 120.0,
                              height: 120.0,
                              child: Icon(
                                Ionicons.people_outline,
                                size: 50.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ])),
      ]),
    );
  }
}
