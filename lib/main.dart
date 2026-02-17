import 'package:flutter/material.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';
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
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: SplashScreen(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(builder: (_) => Home());
            case '/intro':
              return MaterialPageRoute(builder: (_) => Intro());
            case '/history':
              return MaterialPageRoute(builder: (_) => Hist());
            case '/mainTypes':
              return MaterialPageRoute(builder: (_) => MainTypes());
            case '/w':
              return MaterialPageRoute(builder: (_) => W());
            case '/ws':
              return MaterialPageRoute(builder: (_) => Ws());
            case '/wc':
              return MaterialPageRoute(builder: (_) => Wc());
            case '/wd':
              return MaterialPageRoute(builder: (_) => Wd());
            case '/we':
              return MaterialPageRoute(builder: (_) => We());
            case '/wi':
              return MaterialPageRoute(builder: (_) => Wi());
            case '/wp':
              return MaterialPageRoute(builder: (_) => Wp());
            case '/wt':
              return MaterialPageRoute(builder: (_) => Wt());
            case '/wx':
              return MaterialPageRoute(builder: (_) => Wx());
            case '/a':
              return MaterialPageRoute(builder: (_) => A());
            case '/ae':
              return MaterialPageRoute(builder: (_) => Ae());
            case '/ar':
              return MaterialPageRoute(builder: (_) => Ar());
            case '/as':
              return MaterialPageRoute(builder: (_) => As());
            case '/at':
              return MaterialPageRoute(builder: (_) => At());
            case '/au':
              return MaterialPageRoute(builder: (_) => Au());
            case '/l':
              return MaterialPageRoute(builder: (_) => L());
            case '/lf':
              return MaterialPageRoute(builder: (_) => Lf());
            case '/lr':
              return MaterialPageRoute(builder: (_) => Lr());
            case '/lu':
              return MaterialPageRoute(builder: (_) => Lu());
            default:
              return MaterialPageRoute(builder: (_) => Home());
          }
        },
      ),
    ),
  );
}
