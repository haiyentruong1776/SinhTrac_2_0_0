import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class We extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.weTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WE.png', widthFactor: 0.2),
          HeaderImage(path: 'images/we_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/we',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.weChar1,
            l10n.weChar2,
            l10n.weChar3,
            l10n.weChar4,
            l10n.weChar5,
            l10n.weChar6,
            l10n.weChar7,
            l10n.weChar8,
            l10n.weChar9,
            l10n.weChar10,
            l10n.weChar11,
            l10n.weChar12,
            l10n.weChar13,
            l10n.weChar14,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.weAdv1,
            l10n.weAdv2,
            l10n.weAdv3,
            l10n.weAdv4,
            l10n.weAdv5,
            l10n.weAdv6,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.weDisadv1,
            l10n.weDisadv2,
            l10n.weDisadv3,
            l10n.weDisadv4,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.weDev1,
            l10n.weDev2,
            l10n.weDev3,
            l10n.weDev4,
            l10n.weDev5,
            l10n.weDev6,
            l10n.weDev7,
          ]),
          CardPageData(title: l10n.weCommTitle, items: [
            l10n.weComm1,
            l10n.weComm2,
            l10n.weComm3,
            l10n.weComm4,
            l10n.weComm5,
            l10n.weComm6,
          ]),
        ],
      ),
    );
  }
}
