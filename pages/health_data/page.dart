import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHealthData extends StatefulWidget {
  const PageHealthData({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageHealthData>
    with SingleTickerProviderStateMixin {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.only(
            top: 35,
          ),
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            border: Border(
              left: BorderSide(width: 0, color: Color(0xFF000000)),
              top: BorderSide(width: 0, color: Color(0xFF000000)),
              right: BorderSide(width: 0, color: Color(0xFF000000)),
              bottom: BorderSide(width: 0, color: Color(0xFF000000)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  child: Column(
                children: [
                  Icon(
                    MdiIcons.fromString('watch-export'),
                    size: 50,
                    color: Color(0xFF000000),
                  ),
                  Text(
                    'Health Data',
                    style: GoogleFonts.acme(
                      textStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              )),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFFD1BEFA), Color(0xFF8C6161)],
                stops: [0, 1],
              ),
              border: Border(
                left: BorderSide(width: 0, color: Color(0xFF000000)),
                top: BorderSide(width: 0, color: Color(0xFF000000)),
                right: BorderSide(width: 0, color: Color(0xFF000000)),
                bottom: BorderSide(width: 0, color: Color(0xFF000000)),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF8181),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 55,
                            top: 55,
                            right: 55,
                            bottom: 55,
                          ),
                        ),
                        Icon(
                          MdiIcons.fromString('''heart-pulse'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageHeartRate(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF34064),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Heart Rate''',
                                  style: GoogleFonts.acme(
                                    textStyle: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: const EdgeInsets.only(
                      left: 1,
                      top: 1,
                      right: 1,
                      bottom: 1,
                    ),
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC82F2F),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 40,
                            top: 40,
                            right: 40,
                            bottom: 40,
                          ),
                        ),
                        Icon(
                          MdiIcons.fromString('''water'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageBloodPressure(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF0202),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Blood Pressure''',
                                  style: GoogleFonts.acme(
                                    textStyle: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: EdgeInsets.zero,
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2C1B36),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFF000000)),
                        top: BorderSide(width: 0, color: Color(0xFF000000)),
                        right: BorderSide(width: 0, color: Color(0xFF000000)),
                        bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 65,
                            top: 65,
                            right: 65,
                            bottom: 65,
                          ),
                        ),
                        Icon(
                          MdiIcons.fromString('''weather-night'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageSleep(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C1B36),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Sleep''',
                                  style: GoogleFonts.acme(
                                    textStyle: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                ))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.zero,
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                width: double.maxFinite,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    left: BorderSide(width: 0, color: Color(0xFF000000)),
                    top: BorderSide(width: 0, color: Color(0xFF000000)),
                    right: BorderSide(width: 0, color: Color(0xFF000000)),
                    bottom: BorderSide(width: 0, color: Color(0xFF000000)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageHomepage(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString('home-circle-outline'),
                              size: 30,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              '',
                              style: GoogleFonts.acme(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
