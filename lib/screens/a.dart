import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';

import 'package:seabird.biometry/helpers/common_functions.dart';

class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AdHelpers.loadShowInterstitialAd();

    PageController _textController = PageController(initialPage: 0, keepPage: false);
    num deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Row(children: <Widget>[
                Image.asset('images/mountain.png', width: 50),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    ' Chủng Núi',
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
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Center(
                      child: Column(children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            alignment: Alignment.center,
                            decoration: CommonFunctions.boxDecoration(AppColors.lightYellowGreen),
                            child: Image.asset('images/mountain.png', width: 100),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Text(
                              ' Tỉ lệ: 4% trên thế giới. Vân hình núi/sóng (không có hoa tay).',
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
                                    Text('CÁC VÂN CON (5 VÂN):',
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
                                            Navigator.pushNamed(context, '/au');
                                          },
                                          child: Image.asset("images/au_detail.png",
                                              width: 0.3 * deviceWidth)),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/ar');
                                          },
                                          child: Image.asset("images/ar_detail.png",
                                              width: 0.3 * deviceWidth))
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/as');
                                          },
                                          child: Image.asset("images/as_detail.png",
                                              width: 0.3 * deviceWidth)),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/at');
                                          },
                                          child: Image.asset("images/at_detail.png",
                                              width: 0.3 * deviceWidth))
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/ae');
                                          },
                                          child: Image.asset("images/ae_detail.png",
                                              width: 0.2 * deviceWidth)),
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
                                                '- Là người nhanh giận nhưng cũng nhanh quên (dù rất giận nhưng chỉ cần được nói ngọt thì quên ngay, dễ sống), là người không để bụng.',
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
                                                '- Chủng thiên tài vì khả năng hấp thu như miếng bọt biển, hấp thu không ngừng (hấp thu tốt nhất là trước năm 16 tuổi).',
                                                style: TextStyle(
                                                    color: AppColors.textPrimary, fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text('- Chậm chắc, từng bước, từng bước một.',
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
                                                '- Như một con ong chăm chỉ, làm những việc lặp đi lặp lại hàng ngày cực kì tốt. Rất cẩn thận.',
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
                                                '- Thích làm theo những lối mòn, không thích thay đổi (sẽ rất khó sống với những người RL – nước ngược). Muốn thay đổi cần phải từ từ.',
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
                                                '- Là người rất đáng tin cậy, có tinh thần trách nhiệm cao. Cam kết nhiệm vụ với sự tuân thủ nghiêm ngặt.',
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
                                                '- Thích sự an toàn, công việc và phong cách sống đơn giản, thực tế.',
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
                                                '- Có khả năng kết nối những thành viên trong gia đình.',
                                                style: TextStyle(
                                                    color: AppColors.textPrimary, fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text('- Quyết tâm và kiên trì cao.',
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
                                                '- Rất chân thành với tình bạn lâu dài, đặc biệt với những người họ tôn trọng.',
                                                style: TextStyle(
                                                    color: AppColors.textPrimary, fontSize: 15)),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text('- Ý thức mạnh mẽ về công lý.',
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
                                                '- Thích sự ổn định yên bình. Không thích sự xô bồ, náo nhiệt.',
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
                                                '- Không thích tư duy trừu tượng và mơ hồ. Nghi ngờ và hoài nghi về bất cứ điều gì mới.',
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
                                                '- Họ có khả năng hướng dẫn cho người khác về các quy trình.',
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
                                                '- Nếu có 4 Arch trở lên thì bạn là một người rất tuyệt vời và đặc biệt.',
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
                                              '- Với những người này nên hạn chế tranh luận, phân tích dễ gây mất lòng và xung đột khi họ không đồng tình quan điểm.',
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
                                              '- Tạo môi trường học tập nhanh và nhiều lên mỗi ngày, họ hấp thu vô hạn.',
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
                                              '- Nên cho họ làm việc với WE về tinh thần vì họ hấp thu từ những người thông thái và đem lửa tới cho họ, làm việc với WD vì họ sao chép nhanh.',
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
                                              '- Chúng tôi khuyên các bậc phụ huynh có con thuộc chủng vân tay này nên cho con những lời khen khi con làm tốt hoặc cả khi con làm không tốt để bé tự tin vào mình.',
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
                                              '- Luôn tạo cho con môi trường thể hiện cái tôi và rèn luyện khả năng đưa ý kiến của con bằng việc hỏi con về các quyết định mà có liên quan đến bé.',
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
                                              '- Tạo cho con thói quen đọc sách và tìm hiểu thế giới ngay từ bé để khắc phục sự lười biếng của bé.',
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
