import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Wp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wpTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/wp_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wp',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wpChar1,
            l10n.wpChar2,
            l10n.wpChar3,
            l10n.wpChar4,
            l10n.wpChar5,
            l10n.wpChar6,
            l10n.wpChar7,
            l10n.wpChar8,
            l10n.wpChar9,
            l10n.wpChar10,
            l10n.wpChar11,
            l10n.wpChar12,
            l10n.wpChar13,
            l10n.wpChar14,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wpAdv1,
            l10n.wpAdv2,
            l10n.wpAdv3,
            l10n.wpAdv4,
            l10n.wpAdv5,
            l10n.wpAdv6,
            l10n.wpAdv7,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wpDisadv1,
            l10n.wpDisadv2,
            l10n.wpDisadv3,
            l10n.wpDisadv4,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wpDev1,
            l10n.wpDev2,
            l10n.wpDev3,
            l10n.wpDev4,
            l10n.wpDev5,
          ]),
          CardPageData(title: l10n.wpCommTitle, items: [
            l10n.wpComm1,
            l10n.wpComm2,
            l10n.wpComm3,
            l10n.wpComm4,
            l10n.wpComm5,
            l10n.wpComm6,
          ]),
        ],
      ),
    );
  }
}
