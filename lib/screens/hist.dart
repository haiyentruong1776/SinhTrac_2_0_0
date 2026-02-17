import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Hist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    AdHelpers.showInterstitialAdRandom();

    final entries = [
      l10n.hist1823,
      l10n.hist1893,
      l10n.hist1926,
      l10n.hist1969,
      l10n.hist1970,
      l10n.hist1980,
      l10n.hist1985,
      l10n.hist2004,
      l10n.histToday,
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            l10n.histTitle,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          iconTheme: IconThemeData(color: AppColors.textPrimary),
          backgroundColor: AppColors.appBarBg,
          actions: <Widget>[
            CommonFunctions.homeButton(context, '/intro'),
          ],
        ),
        body: Stack(children: <Widget>[
          Container(decoration: BoxDecoration(color: AppColors.scaffoldBg)),
          AdBannerTemplate(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Column(children: <Widget>[
                  Image.asset("images/history.png", width: 80),
                  Text(
                    l10n.histHeading,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 5, bottom: 20),
                      itemCount: entries.length,
                      separatorBuilder: (_, __) => Divider(),
                      itemBuilder: (_, index) => Text(
                        entries[index],
                        style: TextStyle(color: AppColors.textPrimary, fontSize: 15),
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
}
