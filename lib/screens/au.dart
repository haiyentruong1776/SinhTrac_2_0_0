import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Au extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.auTitle,
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/au_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/au',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.auChar1,
            l10n.auChar2,
            l10n.auChar3,
            l10n.auAdv3,
            l10n.auAdv4,
            l10n.auChar6,
            l10n.auChar7,
            l10n.auChar8,
            l10n.auChar9,
            l10n.auChar10,
            l10n.auChar11,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.auAdv1,
            l10n.auAdv2,
            l10n.auAdv3,
            l10n.auAdv4,
            l10n.auAdv5,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.auChar6,
            l10n.auDisadv2,
            l10n.auChar8,
            l10n.auDisadv4,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.auDev1,
            l10n.auDev2,
            l10n.auDev3,
            l10n.auDev4,
          ]),
          CardPageData(title: l10n.auCommTitle, items: [
            l10n.auComm1,
            l10n.auComm2,
            l10n.auComm3,
            l10n.auComm4,
            l10n.auComm5,
            l10n.auComm6,
          ]),
        ],
      ),
    );
  }
}
