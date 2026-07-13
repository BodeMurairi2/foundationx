class TopicModel {
  final String id;
  final String title;
  final String description;
  final int order;
  final bool completed;

  const TopicModel({
    required this.id,
    required this.title,
    required this.description,
    required this.order,
    this.completed = false,
  });
}