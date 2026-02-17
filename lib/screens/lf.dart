import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Lf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.lfTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/lf_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/lf',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.lfChar1,
            l10n.lfChar2,
            l10n.lfChar3,
            l10n.lfChar4,
            l10n.lfChar5,
            l10n.lfChar6,
            l10n.lfChar7,
            l10n.lfChar8,
            l10n.lfChar9,
            l10n.lfChar10,
            l10n.lfChar11,
            l10n.lfChar12,
            l10n.lfChar13,
            l10n.lfChar14,
            l10n.lfChar15,
            l10n.lfChar16,
            l10n.lfChar17,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.lfAdv1,
            l10n.lfAdv2,
            l10n.lfAdv3,
            l10n.lfAdv4,
            l10n.lfAdv5,
            l10n.lfAdv6,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.lfDisadv1,
            l10n.lfDisadv2,
            l10n.lfDisadv3,
            l10n.lfDisadv4,
            l10n.lfDisadv5,
            l10n.lfDisadv6,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.lfDev1,
            l10n.lfDev2,
            l10n.lfDev3,
            l10n.lfDev4,
            l10n.lfDev5,
            l10n.lfDev6,
            l10n.lfDev7,
            l10n.lfDev8,
            l10n.lfDev9,
          ]),
          CardPageData(title: l10n.lfCommTitle, items: [
            l10n.lfComm1,
            l10n.lfComm2,
            l10n.lfComm3,
            l10n.lfComm4,
            l10n.lfComm5,
            l10n.lfComm6,
          ]),
        ],
      ),
    );
  }
}
