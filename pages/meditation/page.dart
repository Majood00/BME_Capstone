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

class PageMeditation extends StatefulWidget {
  const PageMeditation({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageMeditation>
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
                    MdiIcons.fromString('battery-charging-medium'),
                    size: 50,
                    color: Color(0xFF000000),
                  ),
                  Text(
                    'Meditation',
                    style: GoogleFonts.acme(
                      textStyle: TextStyle(
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontSize: 35,
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
              color: Color(0xFFA359DE),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageMindfulnessActivities(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString('arrow-left-circle-outline'),
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
