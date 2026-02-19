import 'package:flutter/material.dart';
import 'package:seabird.biometry/helpers/app_colors.dart';
import 'package:seabird.biometry/helpers/common_functions.dart';
import 'package:seabird.biometry/l10n/app_localizations.dart';
import 'package:seabird.biometry/screens/quiz_result_screen.dart';

/// Interactive 10-step quiz where the user selects a fingerprint parent type
/// (Whorl / Loop / Arch) for each finger.
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  /// null = not yet selected
  final List<String?> _selections = List.filled(10, null);
  int _currentStep = 0;

  /// Maps step index → finger name l10n getter
  List<String> _fingerNames(AppLocalizations l10n) => [
        l10n.quizFingerRight1,
        l10n.quizFingerRight2,
        l10n.quizFingerRight3,
        l10n.quizFingerRight4,
        l10n.quizFingerRight5,
        l10n.quizFingerLeft1,
        l10n.quizFingerLeft2,
        l10n.quizFingerLeft3,
        l10n.quizFingerLeft4,
        l10n.quizFingerLeft5,
      ];

  void _selectType(String type) {
    setState(() {
      _selections[_currentStep] = type;
    });
  }

  void _goNext() {
    if (_currentStep < 9) {
      setState(() => _currentStep++);
    }
  }

  void _goPrev() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
    }
  }

  void _viewResult() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => QuizResultScreen(selections: List.from(_selections)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fingers = _fingerNames(l10n);
    final isLastStep = _currentStep == 9;
    final hasSelection = _selections[_currentStep] != null;
    final allSelected = _selections.every((s) => s != null);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            l10n.quizTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          iconTheme: IconThemeData(color: AppColors.textPrimary),
          backgroundColor: AppColors.appBarBg,
          actions: [CommonFunctions.homeButton(context, '/quiz')],
        ),
        body: Container(
          color: AppColors.scaffoldBg,
          child: Column(
            children: [
              // ── Progress bar ──
              _buildProgressBar(),
              SizedBox(height: 16),

              // ── Step label ──
              Text(
                '${_currentStep + 1} / 10',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textSecondary,
                ),
              ),
              SizedBox(height: 4),
              Text(
                fingers[_currentStep],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              SizedBox(height: 8),
              Text(
                l10n.quizSelectPattern,
                style: TextStyle(fontSize: 15, color: AppColors.textSecondary),
              ),
              SizedBox(height: 16),

              // ── Three selectable type cards ──
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _buildTypeCard(
                      type: 'W',
                      label: l10n.quizTypeWhorl,
                      image: 'images/main_whorl.png',
                      color: AppColors.lightYellowGreen,
                    ),
                    SizedBox(height: 12),
                    _buildTypeCard(
                      type: 'L',
                      label: l10n.quizTypeLoop,
                      image: 'images/main_loop.png',
                      color: AppColors.lightGreenBg,
                    ),
                    SizedBox(height: 12),
                    _buildTypeCard(
                      type: 'A',
                      label: l10n.quizTypeArch,
                      image: 'images/main_arch.png',
                      color: AppColors.lightBlueBg,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),

              // ── Bottom navigation ──
              _buildBottomNav(l10n, isLastStep, hasSelection, allSelected),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: LinearProgressIndicator(
          value: (_currentStep + 1) / 10,
          minHeight: 8,
          backgroundColor: AppColors.divider,
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.accent),
        ),
      ),
    );
  }

  Widget _buildTypeCard({
    required String type,
    required String label,
    required String image,
    required Color color,
  }) {
    final isSelected = _selections[_currentStep] == type;

    return GestureDetector(
      onTap: () => _selectType(type),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? color : AppColors.cardBg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.accent : AppColors.divider,
            width: isSelected ? 2.5 : 1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                      color: AppColors.accent.withOpacity(0.15),
                      blurRadius: 8,
                      offset: Offset(0, 2))
                ]
              : [BoxShadow(color: Colors.black12, blurRadius: 3, offset: Offset(0, 1))],
        ),
        child: Row(
          children: [
            Image.asset(image, width: 60, height: 60),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            if (isSelected) Icon(Icons.check_circle, color: AppColors.accent, size: 28),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav(
      AppLocalizations l10n, bool isLastStep, bool hasSelection, bool allSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, -1))],
      ),
      child: Row(
        children: [
          // Back button
          if (_currentStep > 0)
            Expanded(
              child: OutlinedButton(
                onPressed: _goPrev,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  side: BorderSide(color: AppColors.accent),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  l10n.quizPrev,
                  style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.accent),
                ),
              ),
            )
          else
            Expanded(child: SizedBox()),

          SizedBox(width: 12),

          // Next / View Result button
          Expanded(
            child: ElevatedButton(
              onPressed: hasSelection
                  ? (isLastStep && allSelected ? _viewResult : (isLastStep ? null : _goNext))
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                isLastStep ? l10n.quizViewResult : l10n.quizNext,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
