import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Ws extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.wsTitle,
        iconImage: 'images/eagle.png',
        headerImages: [
          HeaderImage(path: 'images/WS.png', widthFactor: 0.2),
          HeaderImage(path: 'images/ws_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/ws',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.wsChar1,
            l10n.wsChar2,
            l10n.wsChar3,
            l10n.wsChar4,
            l10n.wsChar5,
            l10n.wsChar6,
            l10n.wsChar7,
            l10n.wsChar8,
            l10n.wsChar9,
            l10n.wsChar10,
            l10n.wsChar11,
            l10n.wsChar12,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.wsAdv1,
            l10n.wsAdv2,
            l10n.wsAdv3,
            l10n.wsAdv4,
            l10n.wsAdv5,
            l10n.wsAdv6,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.wsDisadv1,
            l10n.wsDisadv2,
            l10n.wsDisadv3,
            l10n.wsDisadv4,
            l10n.wsDisadv5,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.wsDev1,
            l10n.wsDev2,
            l10n.wsDev3,
            l10n.wsDev4,
            l10n.wsDev5,
            l10n.wsDev6,
            l10n.wsDev7,
            l10n.wsDev8,
          ]),
          CardPageData(title: l10n.wsCommTitle, items: [
            l10n.wsComm1,
            l10n.wsComm2,
            l10n.wsComm3,
            l10n.wsComm4,
            l10n.wsComm5,
            l10n.wsComm6,
            l10n.wsComm7,
          ]),
        ],
      ),
    );
  }
}
