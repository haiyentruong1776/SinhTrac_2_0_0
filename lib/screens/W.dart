import 'package:seabird.biometry/helpers/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/AdBannerTemplate.dart';
import 'package:seabird.biometry/helpers/AdHelpers.dart';

import 'package:seabird.biometry/helpers/CommonFunctions.dart';

class W extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Ads.loadInterstitialAd();
    AdHelpers.showInterstitialAd();

    PageController _textController = PageController(initialPage: 0, keepPage: false);
    num deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Row(children: <Widget>[
                Image.asset('images/eagle.png', width: deviceWidth / 10),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Chủng Đại Bàng',
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
                // action button
                IconButton(
                  icon: Image.asset('images/home_icon.png'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', ModalRoute.withName('/w'));
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
                        child: Image.asset('images/eagle.png', width: 100),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(' Tỉ lệ: 30% trên thế giới. Vân xoáy có tâm (hoa tay).',
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(),
                                Text('CÁC VÂN CON (9 VÂN):',
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
                                        Navigator.pushNamed(context, '/ws');
                                      },
                                      child: Image.asset("images/ws_detail.png",
                                          width: 0.4 * deviceWidth)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/wt');
                                      },
                                      child: Image.asset("images/wt_detail.png",
                                          width: 0.4 * deviceWidth))
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/we');
                                      },
                                      child: Image.asset("images/we_detail.png",
                                          width: 0.4 * deviceWidth)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/wc');
                                      },
                                      child: Image.asset("images/wc_detail.png",
                                          width: 0.4 * deviceWidth))
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/wd');
                                      },
                                      child: Image.asset("images/wd_detail.png",
                                          width: 0.4 * deviceWidth)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/wi');
                                      },
                                      child: Image.asset("images/wi_detail.png",
                                          width: 0.4 * deviceWidth))
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/wp');
                                      },
                                      child: Image.asset("images/wp_detail.png",
                                          width: 0.4 * deviceWidth)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/wx');
                                      },
                                      child: Image.asset("images/wx_detail.png",
                                          width: 0.4 * deviceWidth))
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
                                            '- Khó bảo, bướng bỉnh, ko thích bị áp, cứng đầu.',
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
                                            '- Có khả năng tập trung mục tiêu cao, ít bị xao nhãng.',
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
                                            '- Bạn thích người khác lắng nghe và tuân thủ sự sắp xếp của bạn. Không thích bị chỉ ra điểm sai.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text('- Tập trung vào mục tiêu của mình.',
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
                                            '- Nội tâm khép kín, ít chia sẻ với người khác, thường thích học tập và chơi một mình hơn là các hoạt động nhóm.',
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
                                            '- Tính cá nhân cao nên cái tôi lớn, muốn mình làm trung tâm.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text('- Mạnh mẽ- Chủ Động- Quyết tâm cao.',
                                            style: TextStyle(
                                                color: AppColors.textPrimary, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text('- Tự lập, chủ động. Tự thích làm mọi việc.',
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
                                            '- Tính cá nhân cao nên đôi khi khó hòa hợp với đội nhóm.',
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
                                            '- Có xu hướng muốn áp đặt, thay đổi người khác theo quan điểm của mình.',
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
                                            '- Năng động, tính mục tiêu và làm việc chăm chỉ với một sự kiên trì và ý chí mạnh mẽ.',
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
                                          '- Không nên mắng trẻ, góp ý trước đông người mà chờ lúc riêng tư, lúc nói chuyện nhẹ nhàng, thoải mái thì mới góp ý nhẹ nhàng.',
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
                                          '- Thu nhỏ làm 1 mục tiêu trước, sau đó hoàn thành rồi tiếp tục mục tiêu tiếp theo. Chọn 1 thứ thôi sẽ tuyệt vời hơn.',
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
                                          '- Tạo ra những trải nghiệm thực tế giúp họ tự tin hơn.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text('- Với trẻ có vân tay này, đừng bao giờ dọa.',
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
                                          '- Bố mẹ nói là làm, nói 1 là 1, 2 là 2 còn nếu không về sau đừng hòng nói bé nghe.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text('- Cần cho trẻ tham gia các hoạt động tập thể.',
                                          style: TextStyle(
                                              color: AppColors.textPrimary, fontSize: 15)),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text('- Không nuông chiều bé quá.',
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
