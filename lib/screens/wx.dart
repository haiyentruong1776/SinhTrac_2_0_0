import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Wx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wxTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WX1.png', widthFactor: 0.3),
          HeaderImage(path: 'images/WX2.png', widthFactor: 0.3),
        ],
        homeRoute: '/wx',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wxChar1,
            l10n.wxChar2,
            l10n.wxChar3,
            l10n.wxChar4,
            l10n.wxAdv2,
            l10n.wxChar6,
            l10n.wxChar7,
            l10n.wxChar8,
            l10n.wxChar9,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wxAdv1,
            l10n.wxAdv2,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wxDisadv1,
            l10n.wxDisadv2,
            l10n.wxDisadv3,
            l10n.wxDisadv4,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wxDev1,
            l10n.wxDev2,
            l10n.wxDev3,
            l10n.wxDev4,
            l10n.wxDev5,
          ]),
          CardPageData(title: l10n.wxCommTitle, items: [
            l10n.wxComm1,
            l10n.wxComm2,
            l10n.wxComm3,
            l10n.wxComm4,
            l10n.wxComm5,
            l10n.wxComm6,
          ]),
        ],
      ),
    );
  }
}
