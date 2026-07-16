class UserModel {
  final String id, name, email, grade, school, username;
  final int xpPoints, streak, level;
  final DateTime? lastDailyQuiz;

  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.grade,
    required this.school,
    this.username = 'Student',
    this.xpPoints = 0,
    this.streak = 0,
    this.level = 1,
    this.lastDailyQuiz,
  });

  bool get canTakeDailyQuiz {
    if (lastDailyQuiz == null) return true;
    return DateTime.now().difference(lastDailyQuiz!).inHours >= 24;
  }

 UserModel copyWith({
  DateTime? lastDailyQuiz,
  int? xpPoints,
  int? level,
  int? streak,
}) {
  return UserModel(
    id: id,
    name: name,
    email: email,
    grade: grade,
    school: school,
    username: username,
    xpPoints: xpPoints ?? this.xpPoints,
    streak: streak ?? this.streak,
    level: level ?? this.level,
    lastDailyQuiz: lastDailyQuiz ?? this.lastDailyQuiz,
  );
}
  }
