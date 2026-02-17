import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class As extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.asTitle,
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/as_detail.png', widthFactor: 0.4),
        ],
        homeRoute: '/as',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.asChar1,
            l10n.asChar2,
            l10n.asChar3,
            l10n.asAdv3,
            l10n.asAdv4,
            l10n.asChar6,
            l10n.asChar7,
            l10n.asChar8,
            l10n.asChar9,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.asAdv1,
            l10n.asAdv2,
            l10n.asAdv3,
            l10n.asAdv4,
            l10n.asAdv5,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.asChar6,
            l10n.asDisadv2,
            l10n.asChar8,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.asDev1,
            l10n.asDev2,
            l10n.asDev3,
            l10n.asDev4,
          ]),
          CardPageData(title: l10n.asCommTitle, items: [
            l10n.asComm1,
            l10n.asComm2,
            l10n.asComm3,
            l10n.asComm4,
            l10n.asComm5,
          ]),
        ],
      ),
    );
  }
}
