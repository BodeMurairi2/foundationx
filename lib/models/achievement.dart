class Achievement {
  final String id;
  final String title;
  final String description;
  final String icon;
  final bool unlocked;
  final int xpReward;

  const Achievement({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    this.unlocked = false,
    this.xpReward = 0,
  });

  Achievement copyWith({
    bool? unlocked,
  }) {
    return Achievement(
      id: id,
      title: title,
      description: description,
      icon: icon,
      unlocked: unlocked ?? this.unlocked,
      xpReward: xpReward,
    );
  }
}