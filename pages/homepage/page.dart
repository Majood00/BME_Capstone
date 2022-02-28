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

class PageHomepage extends StatefulWidget {
  const PageHomepage({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageHomepage>
    with SingleTickerProviderStateMixin {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icon(
                    MdiIcons.fromString('''home'''),
                    size: 150,
                    color: Color(0xFFFDF6F6),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                      bottom: 20,
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
                      color: const Color(0xFF8A142D),
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
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                            top: 50,
                            right: 50,
                            bottom: 50,
                          ),
                        ),
                        Icon(
                          MdiIcons.fromString('''watch-export'''),
                          size: 40,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageHealthData(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8A142D),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Health Data''',
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
                      color: const Color(0xFFC4A6EC),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 25,
                            right: 25,
                            bottom: 25,
                          ),
                        ),
                        Icon(
                          MdiIcons.fromString('''meditation'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PageMindfulnessActivities(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3285FF),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Mindfulness Activities''',
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
                      color: const Color(0xFFFF8D49),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 60,
                            top: 60,
                            right: 60,
                            bottom: 60,
                          ),
                        ),
                        Icon(
                          MdiIcons.fromString('''file-question'''),
                          size: 50,
                          color: Color(0xFFFFFFFF),
                        ),
                        GestureDetector(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageSurvey(),
                                ),
                              );
                            },
                            child: Container(
                                width: double.maxFinite,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE4B56B),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  border: null,
                                ),
                                child: Text(
                                  '''Survey''',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageEntryPoint(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Icon(
                                MdiIcons.fromString('logout'),
                                size: 24,
                                color: Color(0xFFFFFFFF),
                              ),
                              Text(
                                'Logout',
                                style: GoogleFonts.acme(
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          top: 4,
                          right: 4,
                          bottom: 4,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      top: 8,
                      right: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
