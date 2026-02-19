import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

/// Quick Identifier / Visual Guide.
/// A visual glossary showing high-quality fingerprint pattern images for all
/// sub-types, grouped by parent type, with tap-to-navigate to detail screens.
class IdentifierScreen extends StatelessWidget {
  const IdentifierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    AdHelpers.showInterstitialAdRandom();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.identifierTitle,
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        backgroundColor: AppColors.appBarBg,
        actions: [CommonFunctions.homeButton(context, '/identifier')],
      ),
      body: AdBannerTemplate(
        child: Container(
          color: AppColors.scaffoldBg,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              // Hint banner
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.accent.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.touch_app, color: AppColors.accent, size: 20),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(l10n.identifierHint,
                          style: TextStyle(
                              fontSize: 13, color: AppColors.accent, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // ── Loop Patterns ──
              _buildSection(
                context: context,
                title: l10n.identifierLoopSection,
                color: AppColors.green,
                bgColor: AppColors.lightGreenBg,
                subTypes: [
                  _Type('LF', l10n.lfTitle, 'images/lf_detail.png', '/lf'),
                  _Type('LR', l10n.lrTitle, 'images/lr_detail.png', '/lr'),
                  _Type('LU', l10n.luTitle, 'images/lu_detail.png', '/lu'),
                ],
              ),
              SizedBox(height: 16),

              // ── Whorl Patterns ──
              _buildSection(
                context: context,
                title: l10n.identifierWhorlSection,
                color: Color(0xFFAFB42B),
                bgColor: AppColors.lightYellowGreen,
                subTypes: [
                  _Type('WS', l10n.wsTitle, 'images/ws_detail.png', '/ws'),
                  _Type('WT', l10n.wtTitle, 'images/wt_detail.png', '/wt'),
                  _Type('WE', l10n.weTitle, 'images/we_detail.png', '/we'),
                  _Type('WC', l10n.wcTitle, 'images/wc_detail.png', '/wc'),
                  _Type('WD', l10n.wdTitle, 'images/wd_detail.png', '/wd'),
                  _Type('WI', l10n.wiTitle, 'images/wi_detail.png', '/wi'),
                  _Type('WP', l10n.wpTitle, 'images/wp_detail.png', '/wp'),
                  _Type('WX', l10n.wxTitle, 'images/wx_detail.png', '/wx'),
                ],
              ),
              SizedBox(height: 16),

              // ── Arch Patterns ──
              _buildSection(
                context: context,
                title: l10n.identifierArchSection,
                color: AppColors.accent,
                bgColor: AppColors.lightBlueBg,
                subTypes: [
                  _Type('AE', l10n.aeTitle, 'images/ae_detail.png', '/ae'),
                  _Type('AR', l10n.arTitle, 'images/ar_detail.png', '/ar'),
                  _Type('AS', l10n.asTitle, 'images/as_detail.png', '/as'),
                  _Type('AT', l10n.atTitle, 'images/at_detail.png', '/at'),
                  _Type('AU', l10n.auTitle, 'images/au_detail.png', '/au'),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ── Section with header + grid ──

  Widget _buildSection({
    required BuildContext context,
    required String title,
    required Color color,
    required Color bgColor,
    required List<_Type> subTypes,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        SizedBox(height: 10),

        // Grid of cards
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.72,
          ),
          itemCount: subTypes.length,
          itemBuilder: (ctx, i) => _buildTypeCard(context, subTypes[i], bgColor),
        ),
      ],
    );
  }

  Widget _buildTypeCard(BuildContext context, _Type type, Color bgColor) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, type.route),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.divider),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Fingerprint image
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 4),
                child: Image.asset(type.image, fit: BoxFit.contain),
              ),
            ),
            // Code badge
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14), bottomRight: Radius.circular(14)),
              ),
              child: Column(
                children: [
                  Text(type.code,
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
                  Text(type.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 10, color: AppColors.textSecondary)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Data model ──

class _Type {
  final String code;
  final String title;
  final String image;
  final String route;
  const _Type(this.code, this.title, this.image, this.route);
}
