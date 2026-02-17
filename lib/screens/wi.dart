import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Wi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wiTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WI.png', widthFactor: 0.2),
          HeaderImage(path: 'images/wi_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wi',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wiChar1,
            l10n.wiChar2,
            l10n.wiChar3,
            l10n.wiChar4,
            l10n.wiChar5,
            l10n.wiChar6,
            l10n.wiChar7,
            l10n.wiChar8,
            l10n.wiChar9,
            l10n.wiChar10,
            l10n.wiChar11,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wiAdv1,
            l10n.wiAdv2,
            l10n.wiAdv3,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wiDisadv1,
            l10n.wiDisadv2,
            l10n.wiDisadv3,
            l10n.wiDisadv4,
            l10n.wiDisadv5,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wiDev1,
            l10n.wiDev2,
            l10n.wiDev3,
            l10n.wiDev4,
            l10n.wiDev5,
            l10n.wiDev6,
            l10n.wiDev7,
            l10n.wiDev8,
            l10n.wiDev9,
            l10n.wiDev10,
          ]),
          CardPageData(title: l10n.wiCommTitle, items: [
            l10n.wiComm1,
            l10n.wiComm2,
            l10n.wiComm3,
            l10n.wiComm4,
            l10n.wiComm5,
            l10n.wiComm6,
            l10n.wiComm7,
          ]),
        ],
      ),
    );
  }
}
