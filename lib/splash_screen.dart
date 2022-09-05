import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation/home_page.dart';

import 'dart:async';
import 'package:shimmer/shimmer.dart';


class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      _navigateToHome();
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 7000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) => HomePage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Opacity(
                opacity: 1.0,
                //child: Image.asset('images/app_icon.png')
              ),
              Shimmer.fromColors(
                period: Duration(milliseconds: 1500),
                baseColor: Color(0xffeeecec),
                highlightColor: Color(0xff525050),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/froshlogo.png',
                        height: 200.0,
                        width: 355.5,
                        // fit : BoxFit.cover,
                      ),
                      // Text(
                      //   "Event the chances",
                      //   style: TextStyle(
                      //       fontSize: 40.0,
                      //       fontFamily: 'Mystical Snow',
                      //       shadows: <Shadow>[
                      //         Shadow(
                      //             blurRadius: 18.0,
                      //             color: Colors.black87,
                      //             offset: Offset.fromDirection(90, 8)
                      //         )
                      //       ]
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              //colorFilter: new ColorFilter.mode(
              //Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage('assets/images/grunge.jp'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
