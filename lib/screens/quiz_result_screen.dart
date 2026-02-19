import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';

/// Displays the quiz result: dominant type, breakdown bar, personality summary,
/// and buttons to explore the detail page or retake the quiz.
class QuizResultScreen extends StatelessWidget {
  final List<String?> selections;

  const QuizResultScreen({Key? key, required this.selections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Count occurrences
    int wCount = selections.where((s) => s == 'W').length;
    int lCount = selections.where((s) => s == 'L').length;
    int aCount = selections.where((s) => s == 'A').length;
    int total = wCount + lCount + aCount;

    // Determine dominant type
    String dominantType;
    if (wCount >= lCount && wCount >= aCount) {
      dominantType = 'W';
    } else if (lCount >= wCount && lCount >= aCount) {
      dominantType = 'L';
    } else {
      dominantType = 'A';
    }

    String dominantLabel;
    String dominantRoute;
    String dominantImage;
    Color dominantColor;
    List<String> traits;

    switch (dominantType) {
      case 'W':
        dominantLabel = l10n.quizTypeWhorl;
        dominantRoute = '/w';
        dominantImage = 'images/eagle.png';
        dominantColor = AppColors.lightYellowGreen;
        traits = [
          l10n.wTrait1,
          l10n.wTrait2,
          l10n.wTrait3,
          l10n.wTrait4,
          l10n.wTrait5,
        ];
        break;
      case 'A':
        dominantLabel = l10n.quizTypeArch;
        dominantRoute = '/a';
        dominantImage = 'images/mountain.png';
        dominantColor = AppColors.lightBlueBg;
        traits = [
          l10n.aTrait1,
          l10n.aTrait2,
          l10n.aTrait3,
          l10n.aTrait4,
          l10n.aTrait5,
        ];
        break;
      default: // L
        dominantLabel = l10n.quizTypeLoop;
        dominantRoute = '/l';
        dominantImage = 'images/water.png';
        dominantColor = AppColors.lightGreenBg;
        traits = [
          l10n.lTrait1,
          l10n.lTrait2,
          l10n.lTrait3,
          l10n.lTrait4,
          l10n.lTrait5,
        ];
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            l10n.quizResultTitle,
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textPrimary),
          ),
          iconTheme: IconThemeData(color: AppColors.textPrimary),
          backgroundColor: AppColors.appBarBg,
          actions: [CommonFunctions.homeButton(context, '/quiz')],
        ),
        body: Container(
          color: AppColors.scaffoldBg,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              // ── Dominant type hero card ──
              _buildHeroCard(dominantLabel, dominantImage, dominantColor, l10n),
              SizedBox(height: 24),

              // ── Breakdown bars ──
              _buildBreakdownSection(l10n, wCount, lCount, aCount, total),
              SizedBox(height: 24),

              // ── Personality traits ──
              _buildTraitsSection(traits),
              SizedBox(height: 24),

              // ── Action buttons ──
              _buildActions(context, l10n, dominantRoute),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroCard(String label, String image, Color bgColor, AppLocalizations l10n) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: [
            Image.asset(image, width: 80, height: 80),
            SizedBox(height: 12),
            Text(
              l10n.quizDominantType,
              style: TextStyle(fontSize: 15, color: AppColors.textSecondary),
            ),
            SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBreakdownSection(AppLocalizations l10n, int w, int l, int a, int total) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColors.cardBg,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildBar(l10n.quizTypeWhorl, w, total, AppColors.lightYellowGreen, Color(0xFFCDDC39)),
            SizedBox(height: 10),
            _buildBar(l10n.quizTypeLoop, l, total, AppColors.lightGreenBg, AppColors.green),
            SizedBox(height: 10),
            _buildBar(l10n.quizTypeArch, a, total, AppColors.lightBlueBg, AppColors.accent),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(String label, int count, int total, Color bg, Color fill) {
    final pct = total > 0 ? count / total : 0.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(label,
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
            ),
            Text('$count / $total  (${(pct * 100).round()}%)',
                style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
          ],
        ),
        SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: LinearProgressIndicator(
            value: pct,
            minHeight: 10,
            backgroundColor: bg,
            valueColor: AlwaysStoppedAnimation<Color>(fill),
          ),
        ),
      ],
    );
  }

  Widget _buildTraitsSection(List<String> traits) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColors.cardBg,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: traits
              .map((t) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(t,
                              style: TextStyle(
                                  fontSize: 15, color: AppColors.textPrimary, height: 1.4)),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildActions(BuildContext context, AppLocalizations l10n, String route) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () => Navigator.pop(context),
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 14),
              side: BorderSide(color: AppColors.accent),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(
              l10n.quizRetake,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.accent),
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, route),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accent,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: Text(
              l10n.quizExploreDetail,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
