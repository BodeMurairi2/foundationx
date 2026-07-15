import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'lesson_provider.dart';
import '../models/models.dart';
import 'theme_provider.dart';
import 'quiz_provider.dart';
import 'achievement_provider.dart';

class UserProvider extends ChangeNotifier {
  UserModel _user;
  final SharedPreferences prefs;

  UserProvider(this.prefs)
      : _user = UserModel(
          id: 'user1',
          name: 'Abejirin',
          email: 'student@foundationx.com',
          grade: 'JSS 3',
          school: 'Foundation Academy',
          username: 'AbejirinKing',
          xpPoints: 2450,
          streak: 7,
          level: 1,
        ) {
    _recalculateLevel();
  }

  UserModel get user => _user;

  int get xpForNextLevel => _user.level * 500;

  double get levelProgress {
    final previousLevelXP = (_user.level - 1) * 500;
    final currentLevelXP = _user.xpPoints - previousLevelXP;

    return (currentLevelXP / 500).clamp(0.0, 1.0);
  }

  void _recalculateLevel() {
    final level = (_user.xpPoints ~/ 500) + 1;

    _user = _user.copyWith(
      level: level,
    );
  }

  Future<void> completeDailyQuiz() async {
    final now = DateTime.now();

    _user = _user.copyWith(
      lastDailyQuiz: now,
      xpPoints: _user.xpPoints + 100,
    );

    _recalculateLevel();

    await prefs.setString(
      'lastDailyQuiz',
      now.toIso8601String(),
    );

    notifyListeners();
  }

  void addXP(int amount) {
    _user = _user.copyWith(
      xpPoints: _user.xpPoints + amount,
    );

    _recalculateLevel();

    notifyListeners();
  }
}

class AppProviders {
  static List<SingleChildWidget> providers(
    SharedPreferences prefs,
  ) =>
      [
        ChangeNotifierProvider(
          create: (_) => UserProvider(prefs),
        ),

        ChangeNotifierProvider(
          create: (_) => ThemeProvider(prefs),
        ),

        ChangeNotifierProvider(
          create: (_) => LessonProvider(prefs),
        ),

        ChangeNotifierProvider(
          create: (_) => QuizProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) => AchievementProvider(),
        ),
      ];
}
