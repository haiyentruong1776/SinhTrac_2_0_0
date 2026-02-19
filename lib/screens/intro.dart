import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    AdHelpers.showInterstitialAdRandom();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.introTitle,
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
            child: Column(children: <Widget>[
              _buildHeader(l10n),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ListView(children: <Widget>[
                    _bodyText(
                      l10n.introBody1,
                    ),
                    _bodyText(
                      l10n.introBody2,
                      color: AppColors.textSecondary,
                    ),
                    Divider(),
                    SizedBox(height: 16),
                    _buildSection(
                      title: l10n.introSectionPersonal,
                      color: AppColors.error,
                      items: [
                        l10n.introPersonal1,
                        l10n.introPersonal2,
                        l10n.introPersonal3,
                        l10n.introPersonal4,
                      ],
                    ),
                    SizedBox(height: 16),
                    _buildSection(
                      title: l10n.introSectionEducation,
                      color: AppColors.dialogAction,
                      items: [
                        l10n.introEducation1,
                        l10n.introEducation2,
                        l10n.introEducation3,
                        l10n.introEducation4,
                        l10n.introEducation5,
                        l10n.introEducation6,
                        l10n.introEducation7,
                      ],
                    ),
                    SizedBox(height: 16),
                    _buildSection(
                      title: l10n.introSectionFamily,
                      color: AppColors.orange,
                      items: [
                        l10n.introFamily1,
                        l10n.introFamily2,
                        l10n.introFamily3,
                      ],
                    ),
                    SizedBox(height: 16),
                    _buildSection(
                      title: l10n.introSectionBusiness,
                      color: AppColors.green,
                      items: [
                        l10n.introBusiness1,
                        l10n.introBusiness2,
                        l10n.introBusiness3,
                        l10n.introBusiness4,
                        l10n.introBusiness5,
                      ],
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  Widget _buildHeader(AppLocalizations l10n) {
    return Row(children: <Widget>[
      Image.asset("images/info.png", width: 80),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text.rich(TextSpan(
            text: l10n.introHeaderLabel,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: l10n.introHeaderDesc,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
        ),
      ),
    ]);
  }

  Widget _bodyText(String text, {Color color = AppColors.textPrimary}) {
    return Text(text, style: TextStyle(color: color, fontSize: 15));
  }

  Widget _buildSection({
    required String title,
    required Color color,
    required List<String> items,
  }) {
    return Column(children: <Widget>[
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
      ),
      Divider(),
      ...items.expand((item) => [
            _bulletItem(item),
            Divider(),
          ]),
    ]);
  }

  Widget _bulletItem(String text) {
    return Row(children: <Widget>[
      Expanded(
        child: Text(text, style: TextStyle(color: AppColors.textPrimary, fontSize: 17)),
      ),
    ]);
  }
}
