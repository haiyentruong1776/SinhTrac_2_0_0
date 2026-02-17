import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/parent_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ParentTypeScreen(
      data: ParentTypeScreenData(
        title: l10n.aTitle,
        iconImage: 'images/mountain.png',
        headerImage: 'images/mountain.png',
        ratioText: l10n.aRatio,
        sectionAttributesTitle: l10n.sectionAttributes,
        subTypesTitle: l10n.aSubTypes,
        tapToOpenText: l10n.tapToOpenDetail,
        homeRoute: '/a',
        subTypeLinks: [
          SubTypeLink(route: '/ae', imagePath: 'images/ae_detail.png'),
          SubTypeLink(route: '/ar', imagePath: 'images/ar_detail.png'),
          SubTypeLink(route: '/as', imagePath: 'images/as_detail.png'),
          SubTypeLink(route: '/at', imagePath: 'images/at_detail.png'),
          SubTypeLink(route: '/au', imagePath: 'images/au_detail.png'),
        ],
        commonTraitsTitle: l10n.aCommonTraits,
        traits: [
          l10n.aTrait1,
          l10n.aTrait2,
          l10n.aTrait3,
          l10n.aTrait4,
          l10n.aTrait5,
          l10n.aTrait6,
          l10n.aTrait7,
          l10n.aTrait8,
          l10n.aTrait9,
          l10n.aTrait10,
          l10n.aTrait11,
          l10n.aTrait12,
          l10n.aTrait13,
          l10n.aTrait14,
          l10n.aTrait15,
        ],
        educationTitle: l10n.aEducation,
        educationItems: [
          l10n.aEdu1,
          l10n.aEdu2,
          l10n.aEdu3,
          l10n.aEdu4,
          l10n.aEdu5,
          l10n.aEdu6,
        ],
      ),
    );
  }
}
