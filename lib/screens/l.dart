import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';

import 'package:seabird.biometry/helpers/common_functions.dart';

class L extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AdHelpers.showInterstitialAd();

    PageController _textController = PageController(initialPage: 0, keepPage: false);
    num deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Row(children: <Widget>[
                Image.asset('images/water.png', width: 50),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    ' Chủng Nước',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ]),
              iconTheme: new IconThemeData(color: AppColors.textPrimary),
              backgroundColor: AppColors.appBarBg,
              actions: <Widget>[
                IconButton(
                  icon: Image.asset('images/home_icon.png'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', ModalRoute.withName('/l'));
                  },
                )
              ]),
          body: new Stack(children: <Widget>[
            new Container(
              decoration: new BoxDecoration(color: AppColors.scaffoldBg),
            ),
            AdBannerTemplate(
              child: new Container(
                  child: Center(
                      child: Column(children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                        alignment: Alignment.center,
                        decoration: CommonFunctions.boxDecoration(AppColors.lightYellowGreen),
                        child: Image.asset('images/water.png', width: 100),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                          ' Tỉ lệ: 65% trên thế giới. Vân móc: không có tâm (không có hoa tay).',
                          style: TextStyle(color: AppColors.textPrimary, fontSize: 15)),
                    ),
                  ],
                ),
                Divider(),
                Text(
                  ' ĐẶC TÍNH: ',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                    child: Container(
                        child: SafeArea(
                            child: PageView(controller: _textController, children: <Widget>[
                  Card(
                      color: AppColors.cardBg,
                      child: Column(children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(),
                                Text('CÁC VÂN CON (3 VÂN):',
                                    style: TextStyle(
                                        color: AppColors.textPrimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
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
                            ),
                            Text('(Bấm vào hình để mở chi tiết):',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        Divider(),
                        Expanded(
                          child: ListView(children: <Widget>[
                            Column(children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lu');
                                      },
                                      child: Image.asset("images/lu_detail.png",
                                          width: 0.25 * deviceWidth)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lr');
                                      },
                                      child: Image.asset("images/lr_detail.png",
                                          width: 0.25 * deviceWidth)),
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/lf');
                                      },
                                      child: Image.asset("images/lf_detail.png",
                                          width: 0.3 * deviceWidth)),
                                ],
                              ),
                              Divider()
                            ])
                          ]),
                        )
                      ])),
                  Card(
                      color: AppColors.cardBg,
                      child: Column(children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(
                                  child: Image.asset(
                                    'images/prev_icon.png',
                                    width: 30,
                                  ),
                                  onTap: () {
                                    _textController.animateToPage(
                                      0,
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.linear,
                                    );
                                  },
                                ),
                                Text('Đặc điểm chung:',
                                    style: TextStyle(
                                        color: AppColors.textPrimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
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
                        Expanded(
                          child: ListView(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              children: <Widget>[
                                Column(children: <Widget>[
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Linh hoạt và thích nghi như nước, rất thích đám đông và cộng đồng.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Khả năng bắt chước vượt trội (cần phải có hình mẫu), học nhanh trong môi trường và trong xã hội, qua trải nghiệm thành công, thất bại của cuộc sống.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Sẵn sàng hòa mình vào dòng chảy của cuộc sống.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Thân thiện, cởi mở - Mở cửa cho những ý tưởng mới.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Nói chuyện cởi mở, trong công việc thì dễ thương lượng, cả tin (dễ thuyết phục).',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Thích được khen, thích được động viên, không thích xung đột, mâu thuẫn; buồn khi bị chê bai, so sánh với người khác (chán luôn, chẳng muốn làm nữa).',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Thích được chia sẻ, tâm sự cũng như lắng nghe người khác, dễ mủi lòng, đồng cảm.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Thích hoạt động cộng đồng, giao tiếp, từ thiện…',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            '- Khác với chủng đại bàng, người chủng nước tính quyết đoán không cao.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text('- Kết nối đám đông, cộng đồng tốt.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                ])
                              ]),
                        )
                      ])),
                  Card(
                      color: AppColors.cardBg,
                      child: Column(children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Text('Phương thức giáo dục:',
                                    style: TextStyle(
                                        color: AppColors.textPrimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Container()
                              ],
                            )
                          ],
                        ),
                        Expanded(
                            child: ListView(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                children: <Widget>[
                              Column(children: <Widget>[
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                          '- Cần sự động viên và khích lệ thông qua những lời khen, những câu nói khích lệ chứ không phải những lời chê bai.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                          '- Nếu bạn là chủng nước, bạn cần 1 nhà lãnh đạo, quản lý tốt.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                          '- Tìm những người sở hữu vân tay chủng đại bàng tốt để hợp tác làm ăn.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                          '- Bạn thương người nên dễ bị dụ lắm. Nên cẩn thận đừng vội cả tin mà hãy thảo luận với những người thân trước.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                          '- Bàn tay bạn nhiều chủng Loop quá nên tìm đến những người chủng WE truyền lửa , những người sở hữu chủng WT mục tiêu cao.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                              ])
                            ]))
                      ]))
                ]))))
              ]))),
            )
          ])),
    );
  }
}
