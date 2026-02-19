import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';

/// Data model for a sub-type navigation link (image + route).
class SubTypeLink {
  final String route;
  final String imagePath;
  final double widthFactor;

  const SubTypeLink({
    required this.route,
    required this.imagePath,
    this.widthFactor = 0.4,
  });
}

/// Data model for the entire parent type screen.
class ParentTypeScreenData {
  final String title;
  final String iconImage;
  final double iconWidth;
  final String headerImage;
  final String ratioText;
  final String sectionAttributesTitle;
  final String subTypesTitle;
  final String tapToOpenText;
  final List<SubTypeLink> subTypeLinks;
  final String commonTraitsTitle;
  final List<String> traits;
  final String educationTitle;
  final List<String> educationItems;
  final String homeRoute;

  const ParentTypeScreenData({
    required this.title,
    required this.iconImage,
    this.iconWidth = 50,
    required this.headerImage,
    required this.ratioText,
    required this.sectionAttributesTitle,
    required this.subTypesTitle,
    required this.tapToOpenText,
    required this.subTypeLinks,
    required this.commonTraitsTitle,
    required this.traits,
    required this.educationTitle,
    required this.educationItems,
    required this.homeRoute,
  });
}

/// Reusable screen widget for parent type screens (W, A, L).
class ParentTypeScreen extends StatelessWidget {
  final ParentTypeScreenData data;

  const ParentTypeScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AdHelpers.showInterstitialAdRandom();

    final pageController = PageController(initialPage: 0, keepPage: false);
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(children: <Widget>[
          Image.asset(data.iconImage, width: deviceWidth / 10),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              data.title,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        backgroundColor: AppColors.appBarBg,
        actions: <Widget>[
          CommonFunctions.homeButton(context, data.homeRoute),
        ],
      ),
      body: Stack(children: <Widget>[
        Container(decoration: BoxDecoration(color: AppColors.scaffoldBg)),
        AdBannerTemplate(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(children: <Widget>[
                // Header: icon + ratio
                _buildHeader(deviceWidth),
                SizedBox(height: 24),
                // Section title
                Text(
                  data.sectionAttributesTitle,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // PageView with 3 pages
                Expanded(
                  child: Container(
                    child: PageView(
                      controller: pageController,
                      children: <Widget>[
                        _buildSubTypesPage(context, pageController, deviceWidth),
                        _buildTraitsPage(pageController),
                        _buildEducationPage(pageController),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildHeader(num deviceWidth) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            alignment: Alignment.center,
            decoration: CommonFunctions.boxDecoration(AppColors.lightYellowGreen),
            child: Image.asset(data.headerImage, width: 100),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Text(
            data.ratioText,
            style: TextStyle(color: AppColors.textPrimary, fontSize: 15),
          ),
        ),
      ],
    );
  }

  Widget _buildSubTypesPage(BuildContext context, PageController controller, num deviceWidth) {
    // Build rows of 2 sub-type links
    List<Widget> imageRows = [];
    for (int i = 0; i < data.subTypeLinks.length; i += 2) {
      List<Widget> rowChildren = [];
      rowChildren.add(
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, data.subTypeLinks[i].route),
          child: Image.asset(
            data.subTypeLinks[i].imagePath,
            width: data.subTypeLinks[i].widthFactor * deviceWidth,
          ),
        ),
      );
      if (i + 1 < data.subTypeLinks.length) {
        rowChildren.add(
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, data.subTypeLinks[i + 1].route),
            child: Image.asset(
              data.subTypeLinks[i + 1].imagePath,
              width: data.subTypeLinks[i + 1].widthFactor * deviceWidth,
            ),
          ),
        );
      }
      imageRows.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: rowChildren,
      ));
      imageRows.add(Divider());
    }

    return Card(
      color: AppColors.cardBg,
      child: Column(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(),
                Text(
                  data.subTypesTitle,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  child: Image.asset('images/next_icon.png', width: 25),
                  onTap: () => controller.animateToPage(1,
                      duration: Duration(milliseconds: 200), curve: Curves.linear),
                ),
              ],
            ),
            Text(
              data.tapToOpenText,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(),
        Expanded(
          child: ListView(children: <Widget>[
            Column(children: imageRows),
          ]),
        ),
      ]),
    );
  }

  Widget _buildTraitsPage(PageController controller) {
    return Card(
      color: AppColors.cardBg,
      child: Column(children: <Widget>[
        SizedBox(height: 16),
        _buildPageHeader(
          title: data.commonTraitsTitle,
          controller: controller,
          prevPage: 0,
          nextPage: 2,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(left: 10, right: 10),
            children: <Widget>[
              Column(children: _buildTextItems(data.traits)),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildEducationPage(PageController controller) {
    return Card(
      color: AppColors.cardBg,
      child: Column(children: <Widget>[
        SizedBox(height: 16),
        _buildPageHeader(
          title: data.educationTitle,
          controller: controller,
          prevPage: 1,
          nextPage: null,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(left: 10, right: 10),
            children: <Widget>[
              Column(children: _buildTextItems(data.educationItems)),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildPageHeader({
    required String title,
    required PageController controller,
    required int prevPage,
    int? nextPage,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              child: Image.asset('images/prev_icon.png', width: 25),
              onTap: () => controller.animateToPage(prevPage,
                  duration: Duration(milliseconds: 200), curve: Curves.linear),
            ),
            Text(
              title,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            nextPage != null
                ? GestureDetector(
                    child: Image.asset('images/next_icon.png', width: 25),
                    onTap: () => controller.animateToPage(nextPage,
                        duration: Duration(milliseconds: 200), curve: Curves.linear),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }

  /// Builds a list of Divider + Row(Expanded(Text)) items from a list of strings.
  List<Widget> _buildTextItems(List<String> items) {
    List<Widget> widgets = [];
    for (final item in items) {
      widgets.add(Divider());
      widgets.add(Row(
        children: <Widget>[
          Expanded(
            child: Text(
              item,
              style: TextStyle(color: AppColors.textPrimary, fontSize: 15),
            ),
          ),
        ],
      ));
    }
    widgets.add(Divider());
    return widgets;
  }
}
