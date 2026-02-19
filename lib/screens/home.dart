import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:provider/provider.dart';
import 'package:seabird.biometry/app_provider.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    var appProvider = Provider.of<AppProvider>(context, listen: false);
    appProvider.init();
    super.initState();
  }

  void _onWillPop() => CommonFunctions.onWillPop(context);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) _onWillPop();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
              Image.asset(
                'images/icon_title.png',
                height: 25,
              ),
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    l10n.appTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  )),
              GestureDetector(
                child: Image.asset('images/star.png', height: 30, width: 30),
                onTap: () {
                  InAppReview.instance.openStoreListing();
                },
              )
            ]),
            iconTheme: new IconThemeData(color: AppColors.textPrimary),
            backgroundColor: AppColors.appBarBg,
          ),
          body: BodyWidget()),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;

    return AdBannerTemplate(
      child: Container(
        color: AppColors.scaffoldBg,
        child: ListView(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 24),
          children: [
            // ── Hero logo ──
            Center(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.accent.withValues(alpha: 0.15),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset('images/logo.png', height: 72, width: 72),
                ),
              ),
            ),
            SizedBox(height: 24),

            // ── Section: Learn ──
            _SectionHeader(
              icon: Icons.school_outlined,
              label: l10n.homeMenuSectionLearn,
              color: AppColors.accent,
            ),
            SizedBox(height: 10),
            _buildGrid(context, screenWidth, [
              _MenuTile(
                icon: Icons.info_outline_rounded,
                label: l10n.homeMenuIntro,
                color: AppColors.accent,
                route: '/intro',
              ),
              _MenuTile(
                icon: Icons.search_rounded,
                label: l10n.homeMenuLookup,
                color: Color(0xFF009688),
                route: '/mainTypes',
              ),
              _MenuTile(
                icon: Icons.visibility_outlined,
                label: l10n.homeMenuIdentifier,
                color: Color(0xFF7B1FA2),
                route: '/identifier',
              ),
              _MenuTile(
                icon: Icons.pie_chart_outline_rounded,
                label: l10n.homeMenuDashboard,
                color: Color(0xFFE65100),
                route: '/dashboard',
              ),
            ]),
            SizedBox(height: 24),

            // ── Section: Tools ──
            _SectionHeader(
              icon: Icons.build_outlined,
              label: l10n.homeMenuSectionTools,
              color: AppColors.green,
            ),
            SizedBox(height: 10),
            _buildGrid(context, screenWidth, [
              _MenuTile(
                icon: Icons.quiz_outlined,
                label: l10n.homeMenuQuiz,
                color: Color(0xFFD32F2F),
                route: '/quiz',
              ),
              _MenuTile(
                icon: Icons.compare_arrows_rounded,
                label: l10n.homeMenuCompare,
                color: Color(0xFF1976D2),
                route: '/compare',
              ),
              _MenuTile(
                icon: Icons.favorite_outline_rounded,
                label: l10n.homeMenuCompat,
                color: Color(0xFFC2185B),
                route: '/compat',
              ),
            ]),
            SizedBox(height: 24),

            // ── Section: More ──
            _SectionHeader(
              icon: Icons.more_horiz,
              label: l10n.homeMenuSectionMore,
              color: AppColors.textSecondary,
            ),
            SizedBox(height: 10),
            _buildGrid(context, screenWidth, [
              _MenuTile(
                icon: Icons.history_rounded,
                label: l10n.homeMenuHistory,
                color: Color(0xFF455A64),
                route: '/history',
              ),
            ]),
          ],
        ),
      ),
    );
  }

  // ── Grid builder ──

  Widget _buildGrid(BuildContext context, double screenWidth, List<_MenuTile> tiles) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: tiles.map((tile) {
        final cardWidth = (screenWidth - 32 - 12) / 2; // 2 columns
        return SizedBox(
          width: cardWidth,
          child: _buildTileCard(context, tile),
        );
      }).toList(),
    );
  }

  Widget _buildTileCard(BuildContext context, _MenuTile tile) {
    return Material(
      color: AppColors.cardBg,
      borderRadius: BorderRadius.circular(16),
      elevation: 1,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.pushNamed(context, tile.route),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.divider.withValues(alpha: 0.5)),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: tile.color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(tile.icon, color: tile.color, size: 24),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  tile.label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Section header ──

class _SectionHeader extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _SectionHeader({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        SizedBox(width: 8),
        Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
              letterSpacing: 0.5,
            )),
      ],
    );
  }
}

// ── Data model ──

class _MenuTile {
  final IconData icon;
  final String label;
  final Color color;
  final String route;

  const _MenuTile({
    required this.icon,
    required this.label,
    required this.color,
    required this.route,
  });
}
