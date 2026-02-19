import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/helpers/sub_type_data.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

/// Compatibility / Relationship screen.
/// Users pick their type and someone else's type to see:
/// - Communication tips for each
/// - Potential friction (from contrasting disadvantages)
/// - Complementary strengths (combined advantages)
class CompatibilityScreen extends StatefulWidget {
  const CompatibilityScreen({Key? key}) : super(key: key);

  @override
  State<CompatibilityScreen> createState() => _CompatibilityScreenState();
}

class _CompatibilityScreenState extends State<CompatibilityScreen> {
  SubTypeData? _myType;
  SubTypeData? _theirType;

  @override
  Widget build(BuildContext context) {
    AdHelpers.showInterstitialAdRandom();
    final l10n = AppLocalizations.of(context)!;
    final catalogue = buildSubTypeCatalogue(l10n);
    final bothSelected = _myType != null && _theirType != null;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.compatTitle,
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        backgroundColor: AppColors.appBarBg,
        actions: [CommonFunctions.homeButton(context, '/compat')],
      ),
      body: AdBannerTemplate(
        child: Container(
          color: AppColors.scaffoldBg,
          child: Column(
            children: [
              // ── Picker row ──
              _buildPickerRow(l10n, catalogue),
              Divider(height: 1, color: AppColors.divider),

              // ── Body ──
              if (bothSelected)
                Expanded(child: _buildResults(l10n))
              else
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Text(
                        l10n.compatSelectBoth,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Pickers ──

  Widget _buildPickerRow(AppLocalizations l10n, List<SubTypeData> catalogue) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: _buildPicker(
              catalogue: catalogue,
              current: _myType,
              label: l10n.compatYourType,
              hint: l10n.compatPickType,
              color: AppColors.lightYellowGreen,
              onChanged: (t) => setState(() => _myType = t),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: _buildPicker(
              catalogue: catalogue,
              current: _theirType,
              label: l10n.compatTheirType,
              hint: l10n.compatPickType,
              color: AppColors.lightBlueBg,
              onChanged: (t) => setState(() => _theirType = t),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPicker({
    required List<SubTypeData> catalogue,
    required SubTypeData? current,
    required String label,
    required String hint,
    required Color color,
    required ValueChanged<SubTypeData> onChanged,
  }) {
    return Column(
      children: [
        Text(label,
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.bold, color: AppColors.textSecondary)),
        SizedBox(height: 6),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: current != null ? color : AppColors.cardBg,
            border: Border.all(color: AppColors.divider),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: current?.code,
              hint: Text(hint, style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
              style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
              icon: Icon(Icons.arrow_drop_down, color: AppColors.textSecondary),
              items: catalogue.map((t) {
                return DropdownMenuItem(
                  value: t.code,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(t.code, style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (code) {
                final selected = catalogue.firstWhere((t) => t.code == code);
                onChanged(selected);
              },
            ),
          ),
        ),
      ],
    );
  }

  // ── Results ──

  Widget _buildResults(AppLocalizations l10n) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        // ── Header: Both types ──
        _buildHeaderRow(),
        SizedBox(height: 16),

        // ── Communication Tips ──
        _buildSection(
          icon: Icons.chat_bubble_outline,
          title: l10n.compatSectionComm,
          color: AppColors.accent,
          child: Column(
            children: [
              _buildTypeColumn(_myType!, AppColors.lightYellowGreen.withOpacity(0.3)),
              SizedBox(height: 8),
              _buildTypeColumn(_theirType!, AppColors.lightBlueBg.withOpacity(0.3)),
            ],
          ),
        ),
        SizedBox(height: 12),

        // ── Complementary Strengths ──
        _buildSection(
          icon: Icons.handshake_outlined,
          title: l10n.compatSectionStrengths,
          color: AppColors.green,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: _buildBulletList(
                      _myType!.advantages, AppColors.lightYellowGreen.withOpacity(0.3))),
              SizedBox(width: 8),
              Expanded(
                  child: _buildBulletList(
                      _theirType!.advantages, AppColors.lightBlueBg.withOpacity(0.3))),
            ],
          ),
        ),
        SizedBox(height: 12),

        // ── Potential Friction ──
        _buildSection(
          icon: Icons.warning_amber_outlined,
          title: l10n.compatSectionFriction,
          color: AppColors.orange,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: _buildBulletList(
                      _myType!.disadvantages, AppColors.lightYellowGreen.withOpacity(0.3))),
              SizedBox(width: 8),
              Expanded(
                  child: _buildBulletList(
                      _theirType!.disadvantages, AppColors.lightBlueBg.withOpacity(0.3))),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      children: [
        Expanded(child: _buildTypeCard(_myType!, AppColors.lightYellowGreen)),
        SizedBox(width: 10),
        Icon(Icons.favorite, color: AppColors.error, size: 28),
        SizedBox(width: 10),
        Expanded(child: _buildTypeCard(_theirType!, AppColors.lightBlueBg)),
      ],
    );
  }

  Widget _buildTypeCard(SubTypeData data, Color color) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      color: color,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Column(
          children: [
            Image.asset(data.image, width: 48, height: 48),
            SizedBox(height: 6),
            Text(data.code,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            Text(data.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required IconData icon,
    required String title,
    required Color color,
    required Widget child,
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
            Row(
              children: [
                Icon(icon, color: color, size: 22),
                SizedBox(width: 8),
                Text(title,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
              ],
            ),
            SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildTypeColumn(SubTypeData data, Color bgColor) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.code,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          SizedBox(height: 6),
          ...data.communication.map((tip) => Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Text(tip,
                    style: TextStyle(fontSize: 13, color: AppColors.textPrimary, height: 1.4)),
              )),
        ],
      ),
    );
  }

  Widget _buildBulletList(List<String> items, Color bgColor) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map((item) => Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text(item,
                      style: TextStyle(fontSize: 13, color: AppColors.textPrimary, height: 1.4)),
                ))
            .toList(),
      ),
    );
  }
}
