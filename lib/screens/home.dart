import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/app_provider.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    var appProvider = Provider.of<AppProvider>(context, listen: false);
    appProvider.init();
    super.initState();
  }

  void _onWillPop() => CommonFunctions.onWillPop(context);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return PopScope(
        onPopInvokedWithResult: (didPop, _) {
          if (didPop) _onWillPop();
        },
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                  Image.asset(
                    'images/icon_title.png',
                    height: 25,
                  ),
                  FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        l10n.appTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      )),
                  GestureDetector(
                    child: Image.asset('images/star.png', height: 30, width: 30),
                    onTap: () {
                      InAppReview.instance.openStoreListing();
                    },
                  )
                ]),
                iconTheme: new IconThemeData(color: AppColors.textPrimary),
                backgroundColor: AppColors.appBarBg,
              ),
              body: BodyWidget()),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    num deviceHeight = MediaQuery.of(context).size.height;

    return new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          color: AppColors.appBarBg,
        ),
      ),
      AdBannerTemplate(
        child: new Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 24),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                    shape: BoxShape.rectangle,
                  ),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(30.0),
                    child: Image.asset('images/logo.png', height: deviceHeight / 8),
                  ),
                ),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.only(top: 30),
                        child: ListView(children: <Widget>[
                          _menuItem(
                            icon: 'images/info.png',
                            label: l10n.homeMenuIntro,
                            onTap: () => Navigator.pushNamed(context, '/intro'),
                          ),
                          _menuItem(
                            iconWidget: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              child: Image.asset('images/logo.png', height: 30, width: 30),
                            ),
                            label: l10n.homeMenuLookup,
                            onTap: () => Navigator.pushNamed(context, '/mainTypes'),
                          ),
                          _menuItem(
                            icon: 'images/history.png',
                            label: l10n.homeMenuHistory,
                            onTap: () => Navigator.pushNamed(context, '/history'),
                          ),
                          _menuItem(
                            icon: 'images/star.png',
                            label: l10n.homeMenuRate,
                            onTap: () => InAppReview.instance.openStoreListing(),
                          ),
                          _menuItem(
                            icon: 'images/exit.png',
                            label: l10n.homeMenuExit,
                            textColor: AppColors.error,
                            onTap: () => CommonFunctions.onWillPop(context),
                            bottomMargin: 5,
                          ),
                        ])))
              ],
            )),
      )
    ]);
  }

  Widget _menuItem({
    String? icon,
    Widget? iconWidget,
    required String label,
    Color textColor = AppColors.textPrimary,
    required VoidCallback onTap,
    double bottomMargin = 16,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppColors.cardBg,
        elevation: 3,
        margin: EdgeInsets.only(bottom: bottomMargin),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.divider),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 32, top: 12, bottom: 12),
          child: Row(
            children: <Widget>[
              iconWidget ?? Image.asset(icon!, height: 30, width: 30),
              Text(
                label,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
