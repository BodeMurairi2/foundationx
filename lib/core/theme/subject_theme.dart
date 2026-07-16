import 'package:flutter/material.dart';
import 'package:foundationx/core/theme/app_colors.dart';

/// Represents the visual style for a subject.
class SubjectThemeData {
  final String name;
  final Color primaryColor;
  final Color lightColor;
  final Color darkColor;
  final IconData icon;

  const SubjectThemeData({
    required this.name,
    required this.primaryColor,
    required this.lightColor,
    required this.darkColor,
    required this.icon,
  });
}

class SubjectTheme {
  SubjectTheme._();

  static const mathematics = SubjectThemeData(
    name: "Mathematics",
    primaryColor: AppColors.mathematics,
    lightColor: Color(0xFFE8F0FF),
    darkColor: Color(0xFF1C2D6B),
    icon: Icons.calculate_rounded,
  );

  static const biology = SubjectThemeData(
    name: "Biology",
    primaryColor: AppColors.biology,
    lightColor: Color(0xFFE8F9F1),
    darkColor: Color(0xFF124D39),
    icon: Icons.eco_rounded,
  );

  static const chemistry = SubjectThemeData(
    name: "Chemistry",
    primaryColor: AppColors.chemistry,
    lightColor: Color(0xFFFFF4E5),
    darkColor: Color(0xFF6E4700),
    icon: Icons.science_rounded,
  );

  static const physics = SubjectThemeData(
    name: "Physics",
    primaryColor: AppColors.physics,
    lightColor: Color(0xFFF3E8FF),
    darkColor: Color(0xFF4A2675),
    icon: Icons.bolt_rounded,
  );

  static const english = SubjectThemeData(
    name: "English",
    primaryColor: AppColors.english,
    lightColor: Color(0xFFFFEBEE),
    darkColor: Color(0xFF7A1D1D),
    icon: Icons.menu_book_rounded,
  );

  static const geography = SubjectThemeData(
    name: "Geography",
    primaryColor: AppColors.geography,
    lightColor: Color(0xFFE6FAFD),
    darkColor: Color(0xFF0D4E61),
    icon: Icons.public_rounded,
  );

  static const history = SubjectThemeData(
    name: "History",
    primaryColor: AppColors.history,
    lightColor: Color(0xFFF8F1E7),
    darkColor: Color(0xFF4D2D12),
    icon: Icons.account_balance_rounded,
  );

  static const computerScience = SubjectThemeData(
    name: "Computer Science",
    primaryColor: AppColors.computerScience,
    lightColor: Color(0xFFEEF2FF),
    darkColor: Color(0xFF2E3478),
    icon: Icons.computer_rounded,
  );

  static const List<SubjectThemeData> all = [
    mathematics,
    biology,
    chemistry,
    physics,
    english,
    geography,
    history,
    computerScience,
  ];

  /// Returns the theme for a subject name.
  static SubjectThemeData fromName(String subject) {
    switch (subject.trim().toLowerCase()) {
      case "math":
      case "maths":
      case "mathematics":
        return mathematics;

      case "biology":
        return biology;

      case "chemistry":
        return chemistry;

      case "physics":
        return physics;

      case "english":
        return english;

      case "geography":
        return geography;

      case "history":
        return history;

      case "computer":
      case "computer science":
      case "ict":
        return computerScience;

      default:
        return mathematics;
    }
  }
}