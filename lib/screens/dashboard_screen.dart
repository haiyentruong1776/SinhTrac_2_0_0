import 'dart:math';
import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

/// Statistics / Overview Dashboard.
/// Shows a custom pie chart of global prevalence, then a tree of all
/// sub-types grouped by parent, each tappable for quick navigation.
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    AdHelpers.showInterstitialAdRandom();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.dashboardTitle,
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        backgroundColor: AppColors.appBarBg,
        actions: [CommonFunctions.homeButton(context, '/dashboard')],
      ),
      body: AdBannerTemplate(
        child: Container(
          color: AppColors.scaffoldBg,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              // ── Pie chart ──
              _buildPieSection(l10n),
              SizedBox(height: 24),

              // ── Sub-type trees ──
              Text(l10n.dashboardSubTypes,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
              SizedBox(height: 12),
              _buildGroupTree(
                context: context,
                l10n: l10n,
                title: l10n.dashboardLoopGroup,
                pct: 65,
                parentRoute: '/l',
                parentImage: 'images/water.png',
                color: AppColors.lightGreenBg,
                accent: AppColors.green,
                subTypes: [
                  _Sub('LF', l10n.lfTitle, 'images/lf_detail.png', '/lf'),
                  _Sub('LR', l10n.lrTitle, 'images/lr_detail.png', '/lr'),
                  _Sub('LU', l10n.luTitle, 'images/lu_detail.png', '/lu'),
                ],
              ),
              SizedBox(height: 12),
              _buildGroupTree(
                context: context,
                l10n: l10n,
                title: l10n.dashboardWhorlGroup,
                pct: 30,
                parentRoute: '/w',
                parentImage: 'images/eagle.png',
                color: AppColors.lightYellowGreen,
                accent: Color(0xFFCDDC39),
                subTypes: [
                  _Sub('WS', l10n.wsTitle, 'images/ws_detail.png', '/ws'),
                  _Sub('WT', l10n.wtTitle, 'images/wt_detail.png', '/wt'),
                  _Sub('WE', l10n.weTitle, 'images/we_detail.png', '/we'),
                  _Sub('WC', l10n.wcTitle, 'images/wc_detail.png', '/wc'),
                  _Sub('WD', l10n.wdTitle, 'images/wd_detail.png', '/wd'),
                  _Sub('WI', l10n.wiTitle, 'images/wi_detail.png', '/wi'),
                  _Sub('WP', l10n.wpTitle, 'images/wp_detail.png', '/wp'),
                  _Sub('WX', l10n.wxTitle, 'images/wx_detail.png', '/wx'),
                ],
              ),
              SizedBox(height: 12),
              _buildGroupTree(
                context: context,
                l10n: l10n,
                title: l10n.dashboardArchGroup,
                pct: 4,
                parentRoute: '/a',
                parentImage: 'images/mountain.png',
                color: AppColors.lightBlueBg,
                accent: AppColors.accent,
                subTypes: [
                  _Sub('AE', l10n.aeTitle, 'images/ae_detail.png', '/ae'),
                  _Sub('AR', l10n.arTitle, 'images/ar_detail.png', '/ar'),
                  _Sub('AS', l10n.asTitle, 'images/as_detail.png', '/as'),
                  _Sub('AT', l10n.atTitle, 'images/at_detail.png', '/at'),
                  _Sub('AU', l10n.auTitle, 'images/au_detail.png', '/au'),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ── Pie chart section ──

  Widget _buildPieSection(AppLocalizations l10n) {
    final segments = [
      _PieSegment(l10n.dashboardLoopGroup, 65, AppColors.green),
      _PieSegment(l10n.dashboardWhorlGroup, 30, Color(0xFFCDDC39)),
      _PieSegment(l10n.dashboardArchGroup, 4, AppColors.accent),
      _PieSegment(l10n.dashboardOther, 1, AppColors.divider),
    ];

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColors.cardBg,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(l10n.dashboardPrevalence,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            SizedBox(height: 16),
            SizedBox(
              height: 180,
              child: Row(
                children: [
                  // Pie
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: SizedBox(
                        width: 160,
                        height: 160,
                        child: CustomPaint(painter: _PieChartPainter(segments)),
                      ),
                    ),
                  ),
                  // Legend
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: segments.map((s) => _buildLegendItem(s)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(_PieSegment seg) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(color: seg.color, borderRadius: BorderRadius.circular(3)),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text('${seg.label}  ${seg.pct}%',
                style: TextStyle(fontSize: 13, color: AppColors.textPrimary)),
          ),
        ],
      ),
    );
  }

  // ── Group tree ──

  Widget _buildGroupTree({
    required BuildContext context,
    required AppLocalizations l10n,
    required String title,
    required int pct,
    required String parentRoute,
    required String parentImage,
    required Color color,
    required Color accent,
    required List<_Sub> subTypes,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColors.cardBg,
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Parent header — tappable
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, parentRoute),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(parentImage, width: 36, height: 36),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: accent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('$pct%',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.chevron_right, color: AppColors.textSecondary, size: 20),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),

            // Sub-type chips
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: subTypes.map((st) => _buildSubTypeChip(context, st, color)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubTypeChip(BuildContext context, _Sub st, Color color) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, st.route),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.divider),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(st.image, width: 28, height: 28),
            SizedBox(width: 6),
            Text(st.code,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          ],
        ),
      ),
    );
  }
}

// ── Data models ──

class _Sub {
  final String code;
  final String title;
  final String image;
  final String route;
  const _Sub(this.code, this.title, this.image, this.route);
}

class _PieSegment {
  final String label;
  final double pct;
  final Color color;
  const _PieSegment(this.label, this.pct, this.color);
}

// ── Custom pie chart painter ──

class _PieChartPainter extends CustomPainter {
  final List<_PieSegment> segments;
  _PieChartPainter(this.segments);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2 - 4;
    double startAngle = -pi / 2; // 12 o'clock

    for (final seg in segments) {
      final sweepAngle = 2 * pi * (seg.pct / 100);
      final paint = Paint()
        ..color = seg.color
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      // White separator line
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
      );

      startAngle += sweepAngle;
    }

    // Center hole for donut look
    canvas.drawCircle(
      center,
      radius * 0.5,
      Paint()..color = Colors.white,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
