import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Ar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.arTitle,
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/AR.png', widthFactor: 0.3),
          HeaderImage(path: 'images/ar_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/ar',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.arChar1,
            l10n.arChar2,
            l10n.arChar3,
            l10n.arChar4,
            l10n.arChar5,
            l10n.arChar6,
            l10n.arChar7,
            l10n.arChar8,
            l10n.arChar9,
            l10n.arChar10,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.arAdv1,
            l10n.arAdv2,
            l10n.arAdv3,
            l10n.arAdv4,
            l10n.arAdv5,
            l10n.arAdv6,
            l10n.arAdv7,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.arDisadv1,
            l10n.arDisadv2,
            l10n.arDisadv3,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.arDev1,
            l10n.arDev2,
            l10n.arDev3,
            l10n.arDev4,
            l10n.arDev5,
          ]),
          CardPageData(title: l10n.arCommTitle, items: [
            l10n.arComm1,
            l10n.arComm2,
            l10n.arComm3,
            l10n.arComm4,
            l10n.arComm5,
            l10n.arComm6,
            l10n.arComm7,
          ]),
        ],
      ),
    );
  }
}
