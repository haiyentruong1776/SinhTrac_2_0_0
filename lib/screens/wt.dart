import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Wt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wtTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WT.png', widthFactor: 0.2),
          HeaderImage(path: 'images/wt_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wt',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wtChar1,
            l10n.wtChar2,
            l10n.wtChar3,
            l10n.wtChar4,
            l10n.wtChar5,
            l10n.wtChar6,
            l10n.wtChar7,
            l10n.wtChar8,
            l10n.wtChar9,
            l10n.wtChar10,
            l10n.wtChar11,
            l10n.wtChar12,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wtAdv1,
            l10n.wtAdv2,
            l10n.wtAdv3,
            l10n.wtAdv4,
            l10n.wtAdv5,
            l10n.wtAdv6,
            l10n.wtAdv7,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wtDisadv1,
            l10n.wtDisadv2,
            l10n.wtDisadv3,
            l10n.wtDisadv4,
            l10n.wtDisadv5,
            l10n.wtDisadv6,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wtDev1,
            l10n.wtDev2,
            l10n.wtDev3,
            l10n.wtDev4,
          ]),
          CardPageData(title: l10n.wtCommTitle, items: [
            l10n.wtComm1,
            l10n.wtComm2,
            l10n.wtComm3,
            l10n.wtComm4,
          ]),
        ],
      ),
    );
  }
}
