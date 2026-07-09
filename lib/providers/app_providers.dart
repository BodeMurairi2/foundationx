import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/models.dart';
import 'package:provider/single_child_widget.dart';

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
          level: 5,
        );

  UserModel get user => _user;

  Future<void> completeDailyQuiz() async {
    final now = DateTime.now();
    _user = _user.copyWith(lastDailyQuiz: now, xpPoints: _user.xpPoints + 100);
    await prefs.setString('lastDailyQuiz', now.toIso8601String());
    notifyListeners();
  }

  void addXP(int amount) {
    _user = _user.copyWith(xpPoints: _user.xpPoints + amount);
    notifyListeners();
  }
}

class AppProviders {
  static List<SingleChildWidget> providers(SharedPreferences prefs) => [
        ChangeNotifierProvider(create: (_) => UserProvider(prefs)),
      ];
}