import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/parent_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class L extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ParentTypeScreen(
      data: ParentTypeScreenData(
        title: l10n.lTitle,
        iconImage: 'images/water.png',
        headerImage: 'images/water.png',
        ratioText: l10n.lRatio,
        sectionAttributesTitle: l10n.sectionAttributes,
        subTypesTitle: l10n.lSubTypes,
        tapToOpenText: l10n.tapToOpenDetail,
        homeRoute: '/l',
        subTypeLinks: [
          SubTypeLink(route: '/lu', imagePath: 'images/lu_detail.png', widthFactor: 0.25),
          SubTypeLink(route: '/lr', imagePath: 'images/lr_detail.png', widthFactor: 0.25),
          SubTypeLink(route: '/lf', imagePath: 'images/lf_detail.png', widthFactor: 0.3),
        ],
        commonTraitsTitle: l10n.lCommonTraits,
        traits: [
          l10n.lTrait1,
          l10n.lTrait2,
          l10n.lTrait3,
          l10n.lTrait4,
          l10n.lTrait5,
          l10n.lTrait6,
          l10n.lTrait7,
          l10n.lTrait8,
          l10n.lTrait9,
          l10n.lTrait10,
        ],
        educationTitle: l10n.lEducation,
        educationItems: [
          l10n.lEdu1,
          l10n.lEdu2,
          l10n.lEdu3,
          l10n.lEdu4,
          l10n.lEdu5,
        ],
      ),
    );
  }
}
