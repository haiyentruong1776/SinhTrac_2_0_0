import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class At extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.atTitle,
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/at_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/at',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.atChar1,
            l10n.atChar2,
            l10n.atChar3,
            l10n.atChar4,
            l10n.atAdv3,
            l10n.atAdv4,
            l10n.atChar7,
            l10n.atChar8,
            l10n.atChar9,
            l10n.atChar10,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.atAdv1,
            l10n.atAdv2,
            l10n.atAdv3,
            l10n.atAdv4,
            l10n.atAdv5,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.atChar7,
            l10n.atDisadv2,
            l10n.atChar9,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.atDev1,
            l10n.atDev2,
            l10n.atDev3,
            l10n.atDev4,
          ]),
          CardPageData(title: l10n.atCommTitle, items: [
            l10n.atComm1,
            l10n.atComm2,
            l10n.atComm3,
            l10n.atComm4,
            l10n.atComm5,
          ]),
        ],
      ),
    );
  }
}
