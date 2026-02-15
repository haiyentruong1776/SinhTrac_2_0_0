import 'package:seabird.biometry/helpers/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/AppProvider.dart';
import 'package:seabird.biometry/helpers/AdBannerTemplate.dart';
import 'package:seabird.biometry/helpers/CommonFunctions.dart';

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
                        "Cẩm Nang Sinh Trắc",
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
    num deviceHeight = MediaQuery.of(context).size.height;
    num deviceWidth = MediaQuery.of(context).size.width;

    return new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
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
                          CommonFunctions.getMenuBox(
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('images/info.png', height: 30, width: 30),
                                  Text(
                                    " Giới Thiệu ",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                              context,
                              '/intro'),
                          CommonFunctions.getMenuBox(
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                                    child: Image.asset('images/logo.png', height: 30, width: 30),
                                  ),
                                  Container(
                                    width: deviceWidth - 120,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        " Tra Cứu Sinh Trắc ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              context,
                              '/mainTypes'),
                          CommonFunctions.getMenuBox(
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset('images/history.png', height: 30, width: 30),
                                  Text(
                                    " Lịch Sử ",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.textPrimary),
                                  ),
                                ],
                              ),
                              context,
                              '/history'),
                          GestureDetector(
                            onTap: () {
                              InAppReview.instance.openStoreListing();
                            },
                            child: Container(
                                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                margin: EdgeInsets.only(bottom: 16),
                                alignment: Alignment.center,
                                decoration: CommonFunctions.boxDecoration(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset('images/star.png', height: 30, width: 30),
                                    Text(
                                      " Rate 5 Sao ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textPrimary),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              CommonFunctions.onWillPop(context);
                            },
                            child: Container(
                                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                margin: EdgeInsets.only(bottom: 5),
                                alignment: Alignment.center,
                                decoration: CommonFunctions.boxDecoration(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset('images/exit.png', height: 30, width: 30),
                                    Text(
                                      " Thoát ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.error),
                                    ),
                                  ],
                                )),
                          ),
                        ])))
              ],
            )),
      )
    ]);
  }
}
