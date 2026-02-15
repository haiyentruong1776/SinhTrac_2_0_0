import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/screens/A.dart';
import 'package:seabird.biometry/screens/Ae.dart';
import 'package:seabird.biometry/screens/Ar.dart';
import 'package:seabird.biometry/screens/As.dart';
import 'package:seabird.biometry/screens/At.dart';
import 'package:seabird.biometry/screens/Au.dart';
import 'package:seabird.biometry/screens/Hist.dart';
import 'package:seabird.biometry/screens/Home.dart';
import 'package:seabird.biometry/screens/Intro.dart';
import 'package:seabird.biometry/screens/L.dart';
import 'package:seabird.biometry/screens/Lf.dart';
import 'package:seabird.biometry/screens/Lr.dart';
import 'package:seabird.biometry/screens/Lu.dart';
import 'package:seabird.biometry/screens/MainTypes.dart';
import 'package:seabird.biometry/screens/W.dart';
import 'package:seabird.biometry/screens/Wc.dart';
import 'package:seabird.biometry/screens/Wd.dart';
import 'package:seabird.biometry/screens/We.dart';
import 'package:seabird.biometry/screens/Wi.dart';
import 'package:seabird.biometry/screens/Wp.dart';
import 'package:seabird.biometry/screens/Ws.dart';
import 'package:seabird.biometry/screens/Wt.dart';
import 'package:seabird.biometry/screens/Wx.dart';

import 'AppProvider.dart';
import 'screens/SplashScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(create: (context) => AppProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/home':
              return SlideRightRoute(widget: Home());
            case '/intro':
              return SlideRightRoute(widget: Intro());
            case '/history':
              return SlideRightRoute(widget: Hist());
            case '/mainTypes':
              return SlideRightRoute(widget: MainTypes());
            case '/w':
              return SlideRightRoute(widget: W());
            case '/ws':
              return SlideRightRoute(widget: Ws());
            case '/wc':
              return SlideRightRoute(widget: Wc());
            case '/wd':
              return SlideRightRoute(widget: Wd());
            case '/we':
              return SlideRightRoute(widget: We());
            case '/wi':
              return SlideRightRoute(widget: Wi());
            case '/wp':
              return SlideRightRoute(widget: Wp());
            case '/wt':
              return SlideRightRoute(widget: Wt());
            case '/wx':
              return SlideRightRoute(widget: Wx());
            case '/a':
              return SlideRightRoute(widget: A());
            case '/ae':
              return SlideRightRoute(widget: Ae());
            case '/ar':
              return SlideRightRoute(widget: Ar());
            case '/as':
              return SlideRightRoute(widget: As());
            case '/at':
              return SlideRightRoute(widget: At());
            case '/au':
              return SlideRightRoute(widget: Au());
            case '/l':
              return SlideRightRoute(widget: L());
            case '/lf':
              return SlideRightRoute(widget: Lf());
            case '/lr':
              return SlideRightRoute(widget: Lr());
            case '/lu':
              return SlideRightRoute(widget: Lu());
            default:
              return SlideRightRoute(widget: Home());
          }
        },
      ),
    ),
  );
}

class SlideRightRoute extends PageRouteBuilder {
  SlideRightRoute({required Widget widget})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> animation2,
          ) =>
              widget,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> animation2,
            Widget widget,
          ) =>
              ScaleTransition(
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.bounceInOut,
              ),
            ),
            child: widget,
          ),
        );
}
