import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Wd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wdTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WD.png', widthFactor: 0.2),
          HeaderImage(path: 'images/wd_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/wd',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wdChar1,
            l10n.wdChar2,
            l10n.wdChar3,
            l10n.wdChar4,
            l10n.wdChar5,
            l10n.wdChar6,
            l10n.wdChar7,
            l10n.wdChar8,
            l10n.wdChar9,
            l10n.wdChar10,
            l10n.wdChar11,
            l10n.wdChar12,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wdAdv1,
            l10n.wdAdv2,
            l10n.wdAdv3,
            l10n.wdAdv4,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wdDisadv1,
            l10n.wdDisadv2,
            l10n.wdDisadv3,
            l10n.wdDisadv4,
            l10n.wdDisadv5,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wdDev1,
            l10n.wdDev2,
            l10n.wdDev3,
            l10n.wdDev4,
            l10n.wdDev5,
            l10n.wdDev6,
            l10n.wdDev7,
            l10n.wdDev8,
          ]),
          CardPageData(title: l10n.wdCommTitle, items: [
            l10n.wdComm1,
            l10n.wdComm2,
            l10n.wdComm3,
            l10n.wdComm4,
            l10n.wdComm5,
            l10n.wdComm6,
          ]),
        ],
      ),
    );
  }
}
