import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Wc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wcTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WC.png', widthFactor: 0.4),
          HeaderImage(path: 'images/wc_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wc',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wcChar1,
            l10n.wcChar2,
            l10n.wcChar3,
            l10n.wcChar4,
            l10n.wcChar5,
            l10n.wcChar6,
            l10n.wcChar7,
            l10n.wcChar8,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wcAdv1,
            l10n.wcAdv2,
            l10n.wcAdv3,
            l10n.wcAdv4,
            l10n.wcAdv5,
            l10n.wcAdv6,
            l10n.wcAdv7,
            l10n.wcAdv8,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wcDisadv1,
            l10n.wcDisadv2,
            l10n.wcDisadv3,
            l10n.wcDisadv4,
            l10n.wcDisadv5,
            l10n.wcDisadv6,
            l10n.wcDisadv7,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wcDev1,
            l10n.wcDev2,
            l10n.wcDev3,
            l10n.wcDev4,
            l10n.wcDev5,
            l10n.wcDev6,
          ]),
          CardPageData(title: l10n.wcCommTitle, items: [
            l10n.wcComm1,
            l10n.wcComm2,
          ]),
        ],
      ),
    );
  }
}
