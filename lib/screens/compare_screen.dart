import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/ad_banner_template.dart';
import 'package:seabird.biometry/helpers/ad_helpers.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

/// Data bag for one sub-type's localized content.
class _SubTypeData {
  final String code;
  final String title;
  final String image;
  final List<String> characteristics;
  final List<String> advantages;
  final List<String> disadvantages;
  final List<String> communication;

  const _SubTypeData({
    required this.code,
    required this.title,
    required this.image,
    required this.characteristics,
    required this.advantages,
    required this.disadvantages,
    required this.communication,
  });
}

/// Builds the complete catalogue of 16 sub-types from the current l10n.
List<_SubTypeData> _buildCatalogue(AppLocalizations l) => [
      _SubTypeData(
        code: 'WS',
        title: l.wsTitle,
        image: 'images/ws_detail.png',
        characteristics: [
          l.wsChar1,
          l.wsChar2,
          l.wsChar3,
          l.wsChar4,
          l.wsChar5,
          l.wsChar6,
          l.wsChar7,
          l.wsChar8,
          l.wsChar9,
          l.wsChar10,
          l.wsChar11,
          l.wsChar12
        ],
        advantages: [l.wsAdv1, l.wsAdv2, l.wsAdv3, l.wsAdv4, l.wsAdv5, l.wsAdv6],
        disadvantages: [l.wsDisadv1, l.wsDisadv2, l.wsDisadv3, l.wsDisadv4, l.wsDisadv5],
        communication: [
          l.wsComm1,
          l.wsComm2,
          l.wsComm3,
          l.wsComm4,
          l.wsComm5,
          l.wsComm6,
          l.wsComm7
        ],
      ),
      _SubTypeData(
        code: 'WT',
        title: l.wtTitle,
        image: 'images/wt_detail.png',
        characteristics: [
          l.wtChar1,
          l.wtChar2,
          l.wtChar3,
          l.wtChar4,
          l.wtChar5,
          l.wtChar6,
          l.wtChar7,
          l.wtChar8,
          l.wtChar9,
          l.wtChar10,
          l.wtChar11,
          l.wtChar12
        ],
        advantages: [l.wtAdv1, l.wtAdv2, l.wtAdv3, l.wtAdv4, l.wtAdv5, l.wtAdv6, l.wtAdv7],
        disadvantages: [
          l.wtDisadv1,
          l.wtDisadv2,
          l.wtDisadv3,
          l.wtDisadv4,
          l.wtDisadv5,
          l.wtDisadv6
        ],
        communication: [l.wtComm1, l.wtComm2, l.wtComm3, l.wtComm4],
      ),
      _SubTypeData(
        code: 'WE',
        title: l.weTitle,
        image: 'images/we_detail.png',
        characteristics: [
          l.weChar1,
          l.weChar2,
          l.weChar3,
          l.weChar4,
          l.weChar5,
          l.weChar6,
          l.weChar7,
          l.weChar8,
          l.weChar9,
          l.weChar10,
          l.weChar11,
          l.weChar12,
          l.weChar13,
          l.weChar14
        ],
        advantages: [l.weAdv1, l.weAdv2, l.weAdv3, l.weAdv4, l.weAdv5, l.weAdv6],
        disadvantages: [l.weDisadv1, l.weDisadv2, l.weDisadv3, l.weDisadv4],
        communication: [l.weComm1, l.weComm2, l.weComm3, l.weComm4, l.weComm5, l.weComm6],
      ),
      _SubTypeData(
        code: 'WC',
        title: l.wcTitle,
        image: 'images/wc_detail.png',
        characteristics: [
          l.wcChar1,
          l.wcChar2,
          l.wcChar3,
          l.wcChar4,
          l.wcChar5,
          l.wcChar6,
          l.wcChar7,
          l.wcChar8
        ],
        advantages: [
          l.wcAdv1,
          l.wcAdv2,
          l.wcAdv3,
          l.wcAdv4,
          l.wcAdv5,
          l.wcAdv6,
          l.wcAdv7,
          l.wcAdv8
        ],
        disadvantages: [
          l.wcDisadv1,
          l.wcDisadv2,
          l.wcDisadv3,
          l.wcDisadv4,
          l.wcDisadv5,
          l.wcDisadv6,
          l.wcDisadv7
        ],
        communication: [l.wcComm1, l.wcComm2],
      ),
      _SubTypeData(
        code: 'WD',
        title: l.wdTitle,
        image: 'images/wd_detail.png',
        characteristics: [
          l.wdChar1,
          l.wdChar2,
          l.wdChar3,
          l.wdChar4,
          l.wdChar5,
          l.wdChar6,
          l.wdChar7,
          l.wdChar8,
          l.wdChar9,
          l.wdChar10,
          l.wdChar11,
          l.wdChar12
        ],
        advantages: [l.wdAdv1, l.wdAdv2, l.wdAdv3, l.wdAdv4],
        disadvantages: [l.wdDisadv1, l.wdDisadv2, l.wdDisadv3, l.wdDisadv4, l.wdDisadv5],
        communication: [l.wdComm1, l.wdComm2, l.wdComm3, l.wdComm4, l.wdComm5, l.wdComm6],
      ),
      _SubTypeData(
        code: 'WI',
        title: l.wiTitle,
        image: 'images/wi_detail.png',
        characteristics: [
          l.wiChar1,
          l.wiChar2,
          l.wiChar3,
          l.wiChar4,
          l.wiChar5,
          l.wiChar6,
          l.wiChar7,
          l.wiChar8,
          l.wiChar9,
          l.wiChar10,
          l.wiChar11
        ],
        advantages: [l.wiAdv1, l.wiAdv2, l.wiAdv3],
        disadvantages: [l.wiDisadv1, l.wiDisadv2, l.wiDisadv3, l.wiDisadv4, l.wiDisadv5],
        communication: [
          l.wiComm1,
          l.wiComm2,
          l.wiComm3,
          l.wiComm4,
          l.wiComm5,
          l.wiComm6,
          l.wiComm7
        ],
      ),
      _SubTypeData(
        code: 'WP',
        title: l.wpTitle,
        image: 'images/wp_detail.png',
        characteristics: [
          l.wpChar1,
          l.wpChar2,
          l.wpChar3,
          l.wpChar4,
          l.wpChar5,
          l.wpChar6,
          l.wpChar7,
          l.wpChar8,
          l.wpChar9,
          l.wpChar10,
          l.wpChar11,
          l.wpChar12,
          l.wpChar13,
          l.wpChar14
        ],
        advantages: [l.wpAdv1, l.wpAdv2, l.wpAdv3, l.wpAdv4, l.wpAdv5, l.wpAdv6, l.wpAdv7],
        disadvantages: [l.wpDisadv1, l.wpDisadv2, l.wpDisadv3, l.wpDisadv4],
        communication: [l.wpComm1, l.wpComm2, l.wpComm3, l.wpComm4, l.wpComm5, l.wpComm6],
      ),
      _SubTypeData(
        code: 'WX',
        title: l.wxTitle,
        image: 'images/wx_detail.png',
        characteristics: [
          l.wxChar1,
          l.wxChar2,
          l.wxChar3,
          l.wxChar4,
          l.wxChar5,
          l.wxChar6,
          l.wxChar7,
          l.wxChar8,
          l.wxChar9
        ],
        advantages: [l.wxAdv1, l.wxAdv2],
        disadvantages: [l.wxDisadv1, l.wxDisadv2, l.wxDisadv3, l.wxDisadv4],
        communication: [l.wxComm1, l.wxComm2, l.wxComm3, l.wxComm4, l.wxComm5, l.wxComm6],
      ),
      _SubTypeData(
        code: 'AE',
        title: l.aeTitle,
        image: 'images/ae_detail.png',
        characteristics: [l.aeChar1, l.aeChar2, l.aeChar3, l.aeChar4, l.aeChar5, l.aeChar6],
        advantages: [l.aeAdv1, l.aeAdv2, l.aeAdv3],
        disadvantages: [l.aeDisadv1],
        communication: [l.aeDev1],
      ),
      _SubTypeData(
        code: 'AR',
        title: l.arTitle,
        image: 'images/ar_detail.png',
        characteristics: [
          l.arChar1,
          l.arChar2,
          l.arChar3,
          l.arChar4,
          l.arChar5,
          l.arChar6,
          l.arChar7,
          l.arChar8,
          l.arChar9,
          l.arChar10
        ],
        advantages: [l.arAdv1, l.arAdv2, l.arAdv3, l.arAdv4, l.arAdv5, l.arAdv6, l.arAdv7],
        disadvantages: [l.arDisadv1, l.arDisadv2, l.arDisadv3],
        communication: [
          l.arComm1,
          l.arComm2,
          l.arComm3,
          l.arComm4,
          l.arComm5,
          l.arComm6,
          l.arComm7
        ],
      ),
      _SubTypeData(
        code: 'AS',
        title: l.asTitle,
        image: 'images/as_detail.png',
        characteristics: [
          l.asChar1,
          l.asChar2,
          l.asChar3,
          l.asChar4,
          l.asChar5,
          l.asChar6,
          l.asChar7,
          l.asChar8,
          l.asChar9
        ],
        advantages: [l.asAdv1, l.asAdv2, l.asAdv3, l.asAdv4, l.asAdv5],
        disadvantages: [l.asDisadv1, l.asDisadv2, l.asDisadv3],
        communication: [l.asComm1, l.asComm2, l.asComm3, l.asComm4, l.asComm5],
      ),
      _SubTypeData(
        code: 'AT',
        title: l.atTitle,
        image: 'images/at_detail.png',
        characteristics: [
          l.atChar1,
          l.atChar2,
          l.atChar3,
          l.atChar4,
          l.atChar5,
          l.atChar6,
          l.atChar7,
          l.atChar8,
          l.atChar9,
          l.atChar10
        ],
        advantages: [l.atAdv1, l.atAdv2, l.atAdv3, l.atAdv4, l.atAdv5],
        disadvantages: [l.atDisadv1, l.atDisadv2, l.atDisadv3],
        communication: [l.atComm1, l.atComm2, l.atComm3, l.atComm4, l.atComm5],
      ),
      _SubTypeData(
        code: 'AU',
        title: l.auTitle,
        image: 'images/au_detail.png',
        characteristics: [
          l.auChar1,
          l.auChar2,
          l.auChar3,
          l.auChar4,
          l.auChar5,
          l.auChar6,
          l.auChar7,
          l.auChar8,
          l.auChar9,
          l.auChar10,
          l.auChar11
        ],
        advantages: [l.auAdv1, l.auAdv2, l.auAdv3, l.auAdv4, l.auAdv5],
        disadvantages: [l.auDisadv1, l.auDisadv2, l.auDisadv3, l.auDisadv4],
        communication: [l.auComm1, l.auComm2, l.auComm3, l.auComm4, l.auComm5, l.auComm6],
      ),
      _SubTypeData(
        code: 'LF',
        title: l.lfTitle,
        image: 'images/lf_detail.png',
        characteristics: [
          l.lfChar1,
          l.lfChar2,
          l.lfChar3,
          l.lfChar4,
          l.lfChar5,
          l.lfChar6,
          l.lfChar7,
          l.lfChar8,
          l.lfChar9,
          l.lfChar10,
          l.lfChar11,
          l.lfChar12,
          l.lfChar13,
          l.lfChar14,
          l.lfChar15,
          l.lfChar16,
          l.lfChar17
        ],
        advantages: [l.lfAdv1, l.lfAdv2, l.lfAdv3, l.lfAdv4, l.lfAdv5, l.lfAdv6],
        disadvantages: [
          l.lfDisadv1,
          l.lfDisadv2,
          l.lfDisadv3,
          l.lfDisadv4,
          l.lfDisadv5,
          l.lfDisadv6
        ],
        communication: [l.lfComm1, l.lfComm2, l.lfComm3, l.lfComm4, l.lfComm5, l.lfComm6],
      ),
      _SubTypeData(
        code: 'LR',
        title: l.lrTitle,
        image: 'images/lr_detail.png',
        characteristics: [
          l.lrChar1,
          l.lrChar2,
          l.lrChar3,
          l.lrChar4,
          l.lrChar5,
          l.lrChar6,
          l.lrChar7,
          l.lrChar8,
          l.lrChar9,
          l.lrChar10,
          l.lrChar11,
          l.lrChar12,
          l.lrChar13,
          l.lrChar14,
          l.lrChar15,
          l.lrChar16,
          l.lrChar17
        ],
        advantages: [l.lrAdv1, l.lrAdv2, l.lrAdv3, l.lrAdv4, l.lrAdv5, l.lrAdv6],
        disadvantages: [
          l.lrDisadv1,
          l.lrDisadv2,
          l.lrDisadv3,
          l.lrDisadv4,
          l.lrDisadv5,
          l.lrDisadv6
        ],
        communication: [l.lrComm1, l.lrComm2, l.lrComm3, l.lrComm4, l.lrComm5, l.lrComm6],
      ),
      _SubTypeData(
        code: 'LU',
        title: l.luTitle,
        image: 'images/lu_detail.png',
        characteristics: [
          l.luChar1,
          l.luChar2,
          l.luChar3,
          l.luChar4,
          l.luChar5,
          l.luChar6,
          l.luChar7,
          l.luChar8,
          l.luChar9,
          l.luChar10,
          l.luChar11,
          l.luChar12,
          l.luChar13,
          l.luChar14,
          l.luChar15
        ],
        advantages: [l.luAdv1, l.luAdv2, l.luAdv3, l.luAdv4, l.luAdv5, l.luAdv6],
        disadvantages: [
          l.luDisadv1,
          l.luDisadv2,
          l.luDisadv3,
          l.luDisadv4,
          l.luDisadv5,
          l.luDisadv6
        ],
        communication: [l.luComm1, l.luComm2, l.luComm3, l.luComm4, l.luComm5, l.luComm6],
      ),
    ];

/// Compare two fingerprint sub-types side by side.
class CompareScreen extends StatefulWidget {
  const CompareScreen({Key? key}) : super(key: key);

  @override
  State<CompareScreen> createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> with SingleTickerProviderStateMixin {
  _SubTypeData? _typeA;
  _SubTypeData? _typeB;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AdHelpers.showInterstitialAdRandom();
    final l10n = AppLocalizations.of(context)!;
    final catalogue = _buildCatalogue(l10n);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.compareTitle,
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        backgroundColor: AppColors.appBarBg,
        actions: [CommonFunctions.homeButton(context, '/compare')],
      ),
      body: AdBannerTemplate(
        child: Container(
          color: AppColors.scaffoldBg,
          child: Column(
            children: [
              // ── Picker row ──
              _buildPickerRow(l10n, catalogue),
              Divider(height: 1, color: AppColors.divider),

              // ── Comparison body ──
              if (_typeA != null && _typeB != null) ...[
                _buildTabBar(l10n),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildComparisonList(_typeA!.characteristics, _typeB!.characteristics),
                      _buildComparisonList(_typeA!.advantages, _typeB!.advantages),
                      _buildComparisonList(_typeA!.disadvantages, _typeB!.disadvantages),
                      _buildComparisonList(_typeA!.communication, _typeB!.communication),
                    ],
                  ),
                ),
              ] else
                Expanded(
                  child: Center(
                    child: Text(
                      l10n.compareSelectTwo,
                      style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
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

  Widget _buildPickerRow(AppLocalizations l10n, List<_SubTypeData> catalogue) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Row(
        children: [
          Expanded(child: _buildDropdown(catalogue, _typeA, true, l10n)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(l10n.compareVs,
                style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.accent)),
          ),
          Expanded(child: _buildDropdown(catalogue, _typeB, false, l10n)),
        ],
      ),
    );
  }

  Widget _buildDropdown(
      List<_SubTypeData> catalogue, _SubTypeData? current, bool isA, AppLocalizations l10n) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        border: Border.all(color: AppColors.divider),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: current?.code,
          hint: Text(l10n.comparePickType,
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
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
            setState(() {
              if (isA) {
                _typeA = selected;
              } else {
                _typeB = selected;
              }
            });
          },
        ),
      ),
    );
  }

  // ── Tab bar ──

  Widget _buildTabBar(AppLocalizations l10n) {
    return Container(
      color: AppColors.cardBg,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        labelColor: AppColors.accent,
        unselectedLabelColor: AppColors.textSecondary,
        indicatorColor: AppColors.accent,
        labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 13),
        tabs: [
          Tab(text: l10n.compareTabChar),
          Tab(text: l10n.compareTabAdv),
          Tab(text: l10n.compareTabDisadv),
          Tab(text: l10n.compareTabComm),
        ],
      ),
    );
  }

  // ── Side-by-side comparison ──

  Widget _buildComparisonList(List<String> leftItems, List<String> rightItems) {
    final maxLen = leftItems.length > rightItems.length ? leftItems.length : rightItems.length;

    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      children: [
        // Header images
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Expanded(child: _buildColumnHeader(_typeA!)),
              SizedBox(width: 6),
              Expanded(child: _buildColumnHeader(_typeB!)),
            ],
          ),
        ),
        // Item rows
        ...List.generate(maxLen, (i) {
          return Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: _buildItemCard(
                      i < leftItems.length ? leftItems[i] : '',
                      AppColors.lightYellowGreen.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(width: 6),
                  Expanded(
                    child: _buildItemCard(
                      i < rightItems.length ? rightItems[i] : '',
                      AppColors.lightBlueBg.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildColumnHeader(_SubTypeData data) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: AppColors.cardBg,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          children: [
            Image.asset(data.image, width: 50, height: 50),
            SizedBox(height: 4),
            Text(
              data.code,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(String text, Color bgColor) {
    if (text.isEmpty) return Container();
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: TextStyle(fontSize: 13, color: AppColors.textPrimary, height: 1.4)),
    );
  }
}
