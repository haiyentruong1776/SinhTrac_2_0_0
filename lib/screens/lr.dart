import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Lr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.lrTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/RL_left.png', widthFactor: 0.25),
          HeaderImage(path: 'images/lr_detail.png', widthFactor: 0.26),
        ],
        homeRoute: '/lr',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.lrChar1,
            l10n.lrChar2,
            l10n.lrChar3,
            l10n.lrChar4,
            l10n.lrChar5,
            l10n.lrChar6,
            l10n.lrChar7,
            l10n.lrChar8,
            l10n.lrChar9,
            l10n.lrChar10,
            l10n.lrChar11,
            l10n.lrChar12,
            l10n.lrChar13,
            l10n.lrChar14,
            l10n.lrChar15,
            l10n.lrChar16,
            l10n.lrChar17,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.lrAdv1,
            l10n.lrAdv2,
            l10n.lrAdv3,
            l10n.lrAdv4,
            l10n.lrAdv5,
            l10n.lrAdv6,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.lrDisadv1,
            l10n.lrDisadv2,
            l10n.lrChar10,
            l10n.lrDisadv4,
            l10n.lrDisadv5,
            l10n.lrDisadv6,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.lrDev1,
            l10n.lrDev2,
            l10n.lrDev3,
            l10n.lrDev4,
            l10n.lrDev5,
          ]),
          CardPageData(title: l10n.lrCommTitle, items: [
            l10n.lrComm1,
            l10n.lrComm2,
            l10n.lrComm3,
            l10n.lrComm4,
            l10n.lrComm5,
            l10n.lrComm6,
          ]),
        ],
      ),
    );
  }
}
