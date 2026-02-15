import 'package:seabird.biometry/helpers/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/AdBannerTemplate.dart';
import 'package:seabird.biometry/helpers/AdHelpers.dart';

/// Data for a single header image shown at the top of the screen.
class HeaderImage {
  final String path;
  final double widthFactor; // multiplied by deviceWidth

  const HeaderImage({required this.path, required this.widthFactor});
}

/// Data for a single page (card) in the PageView.
class CardPageData {
  final String title;
  final List<String> items;

  const CardPageData({required this.title, required this.items});
}

/// Configuration data for a sub-type detail screen.
class SubTypeScreenData {
  final String title;
  final String iconImage;
  final List<HeaderImage> headerImages;
  final String homeRoute;
  final List<CardPageData> pages;

  const SubTypeScreenData({
    required this.title,
    required this.iconImage,
    required this.headerImages,
    required this.homeRoute,
    required this.pages,
  });
}

/// A reusable screen widget for sub-type detail screens.
/// All 16 sub-type screens (Ws, Wc, Wd, We, Wi, Wp, Wt, Wx, Ae, Ar, As, At, Au, Lf, Lr, Lu)
/// use this template — only the [data] differs.
class SubTypeScreen extends StatelessWidget {
  final SubTypeScreenData data;

  const SubTypeScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AdHelpers.showInterstitialAdRandom();

    PageController textController = PageController(initialPage: 0, keepPage: false);
    num deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context, deviceWidth),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(color: AppColors.scaffoldBg),
          ),
          AdBannerTemplate(
            child: Container(
              child: Center(
                child: Column(children: <Widget>[
                  _buildHeaderImages(deviceWidth),
                  Divider(),
                  _buildSectionTitle(),
                  Expanded(
                    child: Container(
                      child: PageView(
                        controller: textController,
                        children: _buildPages(textController),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, num deviceWidth) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(data.iconImage, width: deviceWidth / 12),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              data.title,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      backgroundColor: AppColors.appBarBg,
      actions: <Widget>[
        IconButton(
          icon: Image.asset('images/home_icon.png'),
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/home', ModalRoute.withName(data.homeRoute));
          },
        ),
      ],
    );
  }

  Widget _buildHeaderImages(num deviceWidth) {
    return Row(
      mainAxisAlignment:
          data.headerImages.length > 1 ? MainAxisAlignment.spaceAround : MainAxisAlignment.center,
      children: data.headerImages
          .map((img) => Image.asset(img.path, width: deviceWidth * img.widthFactor))
          .toList(),
    );
  }

  Widget _buildSectionTitle() {
    return Text(
      'ĐẶC TÍNH:',
      style: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  List<Widget> _buildPages(PageController controller) {
    final totalPages = data.pages.length;
    return List.generate(totalPages, (index) {
      final page = data.pages[index];
      final isFirst = index == 0;
      final isLast = index == totalPages - 1;

      return Card(
        color: AppColors.cardBg,
        child: Column(children: <Widget>[
          _buildPageHeader(controller, index, page.title, isFirst, isLast),
          Divider(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(left: 10, right: 10),
              children: <Widget>[
                Column(
                  children: page.items
                      .map((item) => Column(
                            children: [
                              Row(children: <Widget>[
                                Expanded(
                                  child: Text(item,
                                      style: TextStyle(color: AppColors.textPrimary, fontSize: 15)),
                                ),
                              ]),
                              Divider(),
                            ],
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ]),
      );
    });
  }

  Widget _buildPageHeader(
      PageController controller, int index, String title, bool isFirst, bool isLast) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            isFirst
                ? Container(width: 25)
                : GestureDetector(
                    child: Image.asset('images/prev_icon.png', width: 25),
                    onTap: () {
                      controller.animateToPage(
                        index - 1,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                  ),
            Text(title,
                style: TextStyle(
                    color: AppColors.textPrimary, fontSize: 18, fontWeight: FontWeight.bold)),
            isLast
                ? Container(width: 25)
                : GestureDetector(
                    child: Image.asset('images/next_icon.png', width: 25),
                    onTap: () {
                      controller.animateToPage(
                        index + 1,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                  ),
          ],
        ),
      ],
    );
  }
}
