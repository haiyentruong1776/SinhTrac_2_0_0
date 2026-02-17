import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

void main() => runApp(MainTypes());

class _TypeItem {
  final String route;
  final String image;
  final String label;
  final Color color;

  const _TypeItem({
    required this.route,
    required this.image,
    required this.label,
    required this.color,
  });
}

class MainTypes extends StatefulWidget {
  createState() => MainTypesState();
}

class MainTypesState extends State<MainTypes> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final types = [
      _TypeItem(
          route: '/w',
          image: 'images/eagle.png',
          label: l10n.mainTypeEagle,
          color: AppColors.lightYellowGreen),
      _TypeItem(
          route: '/l',
          image: 'images/water.png',
          label: l10n.mainTypeWater,
          color: AppColors.lightGreenBg),
      _TypeItem(
          route: '/a',
          image: 'images/mountain.png',
          label: l10n.mainTypeMountain,
          color: AppColors.lightBlueBg),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            l10n.mainTypesTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          iconTheme: IconThemeData(color: AppColors.textPrimary),
          backgroundColor: AppColors.appBarBg,
          actions: <Widget>[
            CommonFunctions.homeButton(context, '/intro'),
          ],
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.scaffoldBg,
            ),
          ),
          AdBannerTemplate(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 24),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 24),
                      child: ListView(
                        children: types.map((type) => _buildTypeCard(context, type)).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildTypeCard(BuildContext context, _TypeItem type) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, type.route),
      child: Container(
        width: 30,
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        margin: EdgeInsets.only(bottom: 16),
        alignment: Alignment.center,
        decoration: CommonFunctions.boxDecoration(type.color),
        child: Row(
          children: <Widget>[
            Image.asset(type.image, width: 80),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                type.label,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
