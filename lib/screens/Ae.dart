import 'package:seabird.biometry/helpers/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/AdBannerTemplate.dart';
import 'package:seabird.biometry/helpers/AdHelpers.dart';

class Ae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AdHelpers.showInterstitialAdRandom();

    PageController _textController =
        PageController(initialPage: 0, keepPage: false);
    num deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/mountain.png', width: deviceWidth / 12),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        ' Vân Núi Ae',
                        style: TextStyle(
                          color: AppColors.headerGreen,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.accent,
                          decorationStyle: TextDecorationStyle.solid,
                          shadows: [
                            Shadow(
                              color: AppColors.yellowShade50,
                              blurRadius: 1.0,
                              offset: Offset(1.0, 0.0),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
              iconTheme: new IconThemeData(color: AppColors.accent),
              backgroundColor: AppColors.black,
              actions: <Widget>[
                // action button
                IconButton(
                  icon: Image.asset('images/home_icon.png'),
                  onPressed: () {
                    // Navigator.popUntil(context, ModalRoute.withName('/home'));
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/home', ModalRoute.withName('/ae'));
                    // Navigator.pop(context);
                    // Navigator.pop(context, "/");
                  },
                )
              ]),
          body: new Stack(children: <Widget>[
            new Container(
              decoration: new BoxDecoration(color: AppColors.black87),
            ),
            AdBannerTemplate(
              child: new Container(
                  child: Center(
                      child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("images/ae_detail.png",
                        width: deviceWidth * 0.3),
                  ],
                ),
                Divider(),
                Text(
                  'ĐẶC TÍNH:',
                  style: TextStyle(
                    color: AppColors.titleHighlight,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.accent,
                    decorationStyle: TextDecorationStyle.solid,
                    shadows: [
                      Shadow(
                        color: AppColors.yellowShade50,
                        blurRadius: 1.0,
                        offset: Offset(1.0, 0.0),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                        child: SafeArea(
                            child: PageView(
                                controller: _textController,
                                children: <Widget>[
                      Card(
                          color: AppColors.black12,
                          child: Column(children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                    ),
                                    Text('Đặc điểm:',
                                        style: TextStyle(
                                            color: AppColors.accent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: AppColors.white12)),
                                    GestureDetector(
                                      child: Image.asset(
                                        'images/next_icon.png',
                                        width: 25,
                                      ),
                                      onTap: () {
                                        _textController.animateToPage(
                                          1,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.linear,
                                        );
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                            Divider(),
                            Expanded(
                              child: ListView(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  children: <Widget>[
                                    Column(children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                '- Sự kết hợp giữa nhóm Đại bàng với Núi, khoảng cách tâm đến giao điểm của đại bàng nhỏ hơn 5 đường vân.',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                '- Có 1 tâm tròn ở giữa.',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                '- Là một người nhạy cảm, có mục tiêu rõ ràng, luôn sẵn sằng cố gắng để đạt mục tiêu.',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                '- Giỏi với con số, phù hợp với các việc cần tính toán, đầu tư tài chính.',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                '- Là người cẩn trọng, luôn chú ý tới các chi tiết trong quá trình làm việc, luôn đánh giá cao tiến trình công việc.',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                                '- Thông minh, khả năng hấp thu kiến thức cũng rất lớn như các đặc tính vân khác của chủng vân núi.',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                    ])
                                  ]),
                            )
                          ])),
                      Card(
                          color: AppColors.black12,
                          child: Column(children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Image.asset(
                                        'images/prev_icon.png',
                                        width: 25,
                                      ),
                                      onTap: () {
                                        _textController.animateToPage(
                                          0,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.linear,
                                        );
                                      },
                                    ),
                                    Text('Ưu điểm:',
                                        style: TextStyle(
                                            color: AppColors.accent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: AppColors.white12)),
                                    GestureDetector(
                                      child: Image.asset(
                                        'images/next_icon.png',
                                        width: 25,
                                      ),
                                      onTap: () {
                                        _textController.animateToPage(
                                          2,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.linear,
                                        );
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                            Divider(),
                            Expanded(
                                child: ListView(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    children: <Widget>[
                                  Column(children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                              '- Có mục tiêu rõ ràng, luôn sẵn sằng cố gắng để đạt mục tiêu.',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text('- Cẩn trọng.',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                              '- Thông minh, khả năng hấp thu kiến thức cũng rất lớn.',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                  ])
                                ]))
                          ])),
                      Card(
                          color: AppColors.black12,
                          child: Column(children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Image.asset(
                                        'images/prev_icon.png',
                                        width: 25,
                                      ),
                                      onTap: () {
                                        _textController.animateToPage(
                                          1,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.linear,
                                        );
                                      },
                                    ),
                                    Text('Nhược điểm:',
                                        style: TextStyle(
                                            color: AppColors.accent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: AppColors.white12)),
                                    GestureDetector(
                                      child: Image.asset(
                                        'images/next_icon.png',
                                        width: 25,
                                      ),
                                      onTap: () {
                                        _textController.animateToPage(
                                          3,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.linear,
                                        );
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                            Divider(),
                            Expanded(
                                child: ListView(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    children: <Widget>[
                                  Column(children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text('- Nhạy cảm.',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                  ])
                                ]))
                          ])),
                      Card(
                          color: AppColors.black12,
                          child: Column(children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Image.asset(
                                        'images/prev_icon.png',
                                        width: 25,
                                      ),
                                      onTap: () {
                                        _textController.animateToPage(
                                          2,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.linear,
                                        );
                                      },
                                    ),
                                    Text('Phương hướng phát triển:',
                                        style: TextStyle(
                                            color: AppColors.accent,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: AppColors.white12)),
                                    Container(
                                      width: 20,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Divider(),
                            Expanded(
                                child: ListView(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    children: <Widget>[
                                  Column(children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                              '- Nên phát triển sự nghiệp liên quan đén tính toàn, đầu tư tài chính',
                                              style: TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                  ])
                                ]))
                          ])),
                    ]))))
              ]))),
            )
          ])),
    );
  }
}
