import 'package:seabird.biometry/helpers/AppColors.dart';
import 'package:flutter/material.dart';

import 'package:seabird.biometry/helpers/AdBannerTemplate.dart';
import 'package:seabird.biometry/helpers/CommonFunctions.dart';

void main() => runApp(MainTypes());

class MainTypes extends StatefulWidget {
  createState() => MainTypesState();
}

class MainTypesState extends State<MainTypes> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Các chủng chính",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.accent,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.greenAccent,
                  decorationStyle: TextDecorationStyle.solid,
                  shadows: [
                    Shadow(
                      color: AppColors.black,
                      blurRadius: 10.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              iconTheme: new IconThemeData(color: AppColors.accent),
              backgroundColor: AppColors.black87,
              actions: <Widget>[
                // action button
                IconButton(
                  icon: Image.asset('images/home_icon.png'),
                  onPressed: () {
                    // Navigator.popUntil(context, ModalRoute.withName('/home'));

                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', ModalRoute.withName('/intro'));
                    // Navigator.pop(context);
                    // Navigator.pop(context, "/");
                  },
                )
              ]),
          body: Stack(children: <Widget>[
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
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 230,
                        margin: EdgeInsets.only(top: 24),
                        child: ListView(children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/w');
                            },
                            child: Container(
                                width: 30,
                                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                margin: EdgeInsets.only(bottom: 5),
                                alignment: Alignment.center,
                                decoration:
                                    CommonFunctions.boxDecoration(AppColors.lightYellowGreen),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset('images/eagle.png', width: 130),
                                    Text(
                                      "Chủng Đại Bàng",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.titleHighlight),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/l');
                            },
                            child: Container(
                                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                margin: EdgeInsets.only(bottom: 5),
                                alignment: Alignment.center,
                                decoration: CommonFunctions.boxDecoration(AppColors.lightGreenBg),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset('images/water.png', width: 130),
                                    Divider(),
                                    Text(
                                      "Chủng Nước",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blueAccent),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/a');
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              margin: EdgeInsets.only(bottom: 5),
                              alignment: Alignment.center,
                              decoration: CommonFunctions.boxDecoration(AppColors.lightBlueBg),
                              child: Column(
                                children: <Widget>[
                                  Image.asset('images/mountain.png', width: 130),
                                  Divider(),
                                  Text(
                                    "Chủng Núi",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.lightGreen),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
