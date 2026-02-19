import 'package:flutter/material.dart';

/// Centralized color constants used throughout the app.
/// Light theme palette — minimal colors, hierarchy via weight & size.
class AppColors {
  AppColors._(); // Prevent instantiation

  // ─── Core Palette ─────────────────────────────────────────────────
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // ─── Text ─────────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFF212121); // dark grey body text
  static const Color textSecondary = Color(0xFF757575); // lighter secondary text

  // ─── App Bar ──────────────────────────────────────────────────────
  static const Color appBarBg = Color(0xFFFAFAFA); // soft white

  // ─── Backgrounds ──────────────────────────────────────────────────
  static const Color scaffoldBg = Color(0xFFF5F5F5);
  static const Color cardBg = Colors.white; // light grey card
  static const Color menuBoxBg = Colors.white; // menu items on Home

  // ─── Accent (SplashScreen shimmer only) ───────────────────────────
  static const Color accent = Color(0xFF3F51B5); // indigo

  // ─── Error / Action ───────────────────────────────────────────────
  static const Color error = Colors.red;
  static const Color dialogAction = Colors.blue;

  // ─── Button Colors ────────────────────────────────────────────────
  static const Color orange = Colors.orange;
  static const Color green = Color(0xFF4CAF50); // material green

  // ─── Card Backgrounds for MainTypes ───────────────────────────────
  static const Color lightYellowGreen = Color.fromRGBO(247, 255, 230, 1);
  static const Color lightGreenBg = Color.fromRGBO(230, 255, 230, 1);
  static const Color lightBlueBg = Color.fromRGBO(230, 242, 255, 1);

  // ─── Divider ──────────────────────────────────────────────────────
  static const Color divider = Color(0xFFE0E0E0);
}
