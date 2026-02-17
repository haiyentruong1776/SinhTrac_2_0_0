import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Lu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.luTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/UL_left.png', widthFactor: 0.3),
          HeaderImage(path: 'images/lu_detail.png', widthFactor: 0.26),
        ],
        homeRoute: '/lu',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.luChar1,
            l10n.luChar2,
            l10n.luChar3,
            l10n.luChar4,
            l10n.luChar5,
            l10n.luChar6,
            l10n.luChar7,
            l10n.luChar8,
            l10n.luChar9,
            l10n.luChar10,
            l10n.luChar11,
            l10n.luChar12,
            l10n.luChar13,
            l10n.luChar14,
            l10n.luChar15,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.luAdv1,
            l10n.luAdv2,
            l10n.luAdv3,
            l10n.luAdv4,
            l10n.luAdv5,
            l10n.luAdv6,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.luDisadv1,
            l10n.luDisadv2,
            l10n.luDisadv3,
            l10n.luDisadv4,
            l10n.luDisadv5,
            l10n.luDisadv6,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.luDev1,
            l10n.luDev2,
            l10n.luDev3,
            l10n.luDev4,
            l10n.luDev5,
            l10n.luDev6,
            l10n.luDev7,
            l10n.luDev8,
            l10n.luDev9,
          ]),
          CardPageData(title: l10n.luCommTitle, items: [
            l10n.luComm1,
            l10n.luComm2,
            l10n.luComm3,
            l10n.luComm4,
            l10n.luComm5,
            l10n.luComm6,
          ]),
        ],
      ),
    );
  }
}
