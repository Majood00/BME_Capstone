import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_required_state.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthRequiredState<PageEntryPoint>
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
                colors: <Color>[Color(0xFFDFACD6), Color(0xFFD49595)],
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.zero,
                  ),
                  Center(
                    child: Icon(
                      MdiIcons.fromString('''meditation'''),
                      size: 350,
                      color: Color(0xFFAD7D9E),
                    ),
                  ),
                  Center(
                    child: Text(r'''Begin Your  Mindfulness Journey''',
                        style: GoogleFonts.acme(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3),
                  ),
                  Center(
                    child: Text(r'''We hope you are having a good day''',
                        style: GoogleFonts.acme(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(r'''Please Sign in Below''',
                        style: GoogleFonts.acme(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 1),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 5,
                        right: 5,
                        bottom: 5,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    width: double.maxFinite,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFA67888),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border(
                        left: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                            color: Color(0xFF000000)),
                        top: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                            color: Color(0xFF000000)),
                        right: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                            color: Color(0xFF000000)),
                        bottom: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                            color: Color(0xFF000000)),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GoogleAuthButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageHomepage(),
                                ),
                              );
                            },
                          ),
                          AppleAuthButton(
                            onPressed: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageHomepage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                        bottom: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
