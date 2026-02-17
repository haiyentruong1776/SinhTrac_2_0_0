import 'package:seabird.biometry/helpers/app_colors.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/app_provider.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:shimmer/shimmer.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Provider.of<AppProvider>(context, listen: false).init();
    Future.delayed(Duration(seconds: 1), () => navigationPage());

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
              baseColor: AppColors.accent,
              highlightColor: AppColors.textSecondary,
              child: Text(
                AppLocalizations.of(context)!.splashTitle,
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
