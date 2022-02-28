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

class PageMindfulnessActivities extends StatefulWidget {
  const PageMindfulnessActivities({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageMindfulnessActivities>
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
            top: 30,
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
                    MdiIcons.fromString('meditation'),
                    size: 50,
                    color: Color(0xFF000000),
                  ),
                  Text(
                    'Mindfulness Activities',
                    style: GoogleFonts.acme(
                      textStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    textAlign: TextAlign.center,
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
              color: Color(0xFFB49AEF),
              border: Border(
                left: BorderSide(width: 0, color: Color(0xFF000000)),
                top: BorderSide(width: 0, color: Color(0xFF000000)),
                right: BorderSide(width: 0, color: Color(0xFF000000)),
                bottom: BorderSide(width: 0, color: Color(0xFF000000)),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: const EdgeInsets.only(
                      left: 120,
                    ),
                    width: double.maxFinite,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9F7FF4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        top: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        right: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        bottom: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.fromString('''music-clef-treble'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageMusic(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDA5B6E),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Music''',
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
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: const EdgeInsets.only(
                      left: 110,
                      right: 120,
                    ),
                    width: double.maxFinite,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9171D9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        top: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        right: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        bottom: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.fromString('''battery-charging-medium'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageMeditation(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDA5B6E),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Meditation''',
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
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: const EdgeInsets.only(
                      left: 110,
                      right: 110,
                    ),
                    width: double.maxFinite,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8A5FEA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        top: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        right: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        bottom: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.fromString('''weather-windy'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageBreathing(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDA5B6E),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Breathing''',
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
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: const EdgeInsets.only(
                      left: 120,
                      right: 110,
                    ),
                    width: double.maxFinite,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7640EE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        top: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        right: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        bottom: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.fromString('''yoga'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageYoga(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDA5B6E),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Yoga''',
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
                  Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      top: 7,
                      right: 7,
                      bottom: 7,
                    ),
                    padding: const EdgeInsets.only(
                      left: 110,
                      right: 110,
                    ),
                    width: double.maxFinite,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6220F4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        top: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        right: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                        bottom: BorderSide(width: 0, color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.fromString('''walk'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageWalking(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFBB85FF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Walking''',
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
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
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
