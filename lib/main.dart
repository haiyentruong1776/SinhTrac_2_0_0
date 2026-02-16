import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/screens/a.dart';
import 'package:seabird.biometry/screens/ae.dart';
import 'package:seabird.biometry/screens/ar.dart';
import 'package:seabird.biometry/screens/as.dart';
import 'package:seabird.biometry/screens/at.dart';
import 'package:seabird.biometry/screens/au.dart';
import 'package:seabird.biometry/screens/hist.dart';
import 'package:seabird.biometry/screens/home.dart';
import 'package:seabird.biometry/screens/intro.dart';
import 'package:seabird.biometry/screens/l.dart';
import 'package:seabird.biometry/screens/lf.dart';
import 'package:seabird.biometry/screens/lr.dart';
import 'package:seabird.biometry/screens/lu.dart';
import 'package:seabird.biometry/screens/main_types.dart';
import 'package:seabird.biometry/screens/w.dart';
import 'package:seabird.biometry/screens/wc.dart';
import 'package:seabird.biometry/screens/wd.dart';
import 'package:seabird.biometry/screens/we.dart';
import 'package:seabird.biometry/screens/wi.dart';
import 'package:seabird.biometry/screens/wp.dart';
import 'package:seabird.biometry/screens/ws.dart';
import 'package:seabird.biometry/screens/wt.dart';
import 'package:seabird.biometry/screens/wx.dart';

import 'app_provider.dart';
import 'screens/splash_screen.dart';

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
