import 'package:flutter/material.dart';

/// Centralized color constants used throughout the app.
/// Replace hardcoded Colors.* references with AppColors.* for consistency.
class AppColors {
  AppColors._(); // Prevent instantiation

  // ─── Primary / Neutral ───────────────────────────────────────────
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color black87 = Colors.black87;
  static const Color black12 = Colors.black12;
  static const Color white12 = Colors.white12;
  static const Color darkGrey = Color.fromRGBO(50, 50, 50, 1);

  // ─── Accent / Highlight ──────────────────────────────────────────
  static const Color accent = Colors.yellowAccent;
  static const Color yellow = Colors.yellow;
  static final Color yellowShade50 = Colors.yellow.shade50;
  static final Color yellow100 = Colors.yellow[100]!;
  static const Color limeAccent = Colors.limeAccent;
  static const Color orange = Colors.orange;

  // ─── Title / Header ──────────────────────────────────────────────
  static const Color titleHighlight = Colors.redAccent;
  static const Color headerGreen = Colors.lightGreenAccent;
  static const Color headerBlue = Colors.lightBlueAccent;

  // ─── Error / Action ──────────────────────────────────────────────
  static const Color error = Colors.red;
  static const Color dialogAction = Colors.blue;
  static const Color blueAccent = Colors.blueAccent;

  // ─── Green Variants ──────────────────────────────────────────────
  static const Color green = Colors.green;
  static const Color greenAccent = Colors.greenAccent;
  static const Color lightGreen = Colors.lightGreen;

  // ─── Backgrounds (fromRGBO) ──────────────────────────────────────
  static const Color lightYellowGreen = Color.fromRGBO(247, 255, 230, 1);
  static const Color lightGreenBg = Color.fromRGBO(230, 255, 230, 1);
  static const Color lightBlueBg = Color.fromRGBO(230, 242, 255, 1);
}
