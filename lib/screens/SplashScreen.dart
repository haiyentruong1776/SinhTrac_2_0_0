import 'package:seabird.biometry/helpers/AppColors.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/AppProvider.dart';
import 'package:seabird.biometry/helpers/AdHelpers.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Provider.of<AppProvider>(context, listen: false).init();
    Future.delayed(Duration(seconds: 1), () => navigateToHomeScreen());

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AdHelpers.initialize(context);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  navigateToHomeScreen() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: AppColors.white,
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/logo.png',
              width: MediaQuery.of(context).size.width / 4,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Shimmer.fromColors(
              baseColor: AppColors.yellow,
              highlightColor: AppColors.dialogAction,
              child: Text(
                'CẨM NANG SINH TRẮC',
                textAlign: TextAlign.center,
                style: GoogleFonts.tomorrow(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
