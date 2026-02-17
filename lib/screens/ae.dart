import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/sub_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class Ae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SubTypeScreen(
      data: SubTypeScreenData(
        title: l10n.aeTitle,
        iconImage: 'images/mountain.png',
        headerImages: [
          HeaderImage(path: 'images/ae_detail.png', widthFactor: 0.3),
        ],
        homeRoute: '/ae',
        pages: [
          CardPageData(title: l10n.sectionCharacteristics, items: [
            l10n.aeChar1,
            l10n.aeChar2,
            l10n.aeChar3,
            l10n.aeChar4,
            l10n.aeChar5,
            l10n.aeChar6,
          ]),
          CardPageData(title: l10n.sectionAdvantages, items: [
            l10n.aeAdv1,
            l10n.aeAdv2,
            l10n.aeAdv3,
          ]),
          CardPageData(title: l10n.sectionDisadvantages, items: [
            l10n.aeDisadv1,
          ]),
          CardPageData(title: l10n.sectionDevelopment, items: [
            l10n.aeDev1,
          ]),
        ],
      ),
    );
  }
}
