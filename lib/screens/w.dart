import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/parent_type_screen.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

class W extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ParentTypeScreen(
      data: ParentTypeScreenData(
        title: l10n.wTitle,
        iconImage: 'images/eagle.png',
        headerImage: 'images/eagle.png',
        ratioText: l10n.wRatio,
        sectionAttributesTitle: l10n.sectionAttributes,
        subTypesTitle: l10n.wSubTypes,
        tapToOpenText: l10n.tapToOpenDetail,
        homeRoute: '/w',
        subTypeLinks: [
          SubTypeLink(route: '/ws', imagePath: 'images/ws_detail.png'),
          SubTypeLink(route: '/wt', imagePath: 'images/wt_detail.png'),
          SubTypeLink(route: '/we', imagePath: 'images/we_detail.png'),
          SubTypeLink(route: '/wc', imagePath: 'images/wc_detail.png'),
          SubTypeLink(route: '/wd', imagePath: 'images/wd_detail.png'),
          SubTypeLink(route: '/wi', imagePath: 'images/wi_detail.png'),
          SubTypeLink(route: '/wp', imagePath: 'images/wp_detail.png'),
          SubTypeLink(route: '/wx', imagePath: 'images/wx_detail.png'),
        ],
        commonTraitsTitle: l10n.wCommonTraits,
        traits: [
          l10n.wTrait1,
          l10n.wTrait2,
          l10n.wTrait3,
          l10n.wTrait4,
          l10n.wTrait5,
          l10n.wTrait6,
          l10n.wTrait7,
          l10n.wTrait8,
          l10n.wTrait9,
          l10n.wTrait10,
          l10n.wTrait11,
        ],
        educationTitle: l10n.wEducation,
        educationItems: [
          l10n.wEdu1,
          l10n.wEdu2,
          l10n.wEdu3,
          l10n.wEdu4,
          l10n.wEdu5,
          l10n.wEdu6,
          l10n.wEdu7,
        ],
      ),
    );
  }
}
