import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../models/topic.dart';
import '../../data/app_data.dart';
import '../../models/models.dart';
import '../../providers/lesson_provider.dart';

class SubjectDetailScreen extends StatelessWidget {
  final String subjectId;

  const SubjectDetailScreen({
    super.key,
    required this.subjectId,
  });

  @override
  Widget build(BuildContext context) {
    final lessonProvider = context.watch<LessonProvider>();

    final SubjectModel subject = AppData.subjects.firstWhere(
      (s) => s.id == subjectId,
    );

    final List<LessonModel> lessons =
        AppData.getLessonsForSubject(subjectId);

    final List<TopicModel> topics =
        AppData.getTopicsForSubject(subjectId);

    final List<QuizModel> quizzes =
        AppData.getQuizzesForSubject(subjectId);

    return Scaffold(
      appBar: AppBar(
        title: Text(subject.name),
        backgroundColor: subject.color,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: subject.lightColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  subject.emoji,
                  style: const TextStyle(
                    fontSize: 48,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  subject.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  subject.description,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                LinearProgressIndicator(
                  value: subject.progress,
                  color: subject.color,
                  backgroundColor: Colors.white,
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(10),
                ),

                const SizedBox(height: 10),

                Text(
                  "${subject.completedLessons}/${subject.totalLessons} lessons completed",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 28),

          const Text(
            "Topics",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          ...topics.map((topic) {
            final topicLessons = lessons
                .where(
                  (lesson) =>
                      lesson.topicTag.toLowerCase() ==
                      topic.title.toLowerCase(),
                )
                .toList();

            final completedLessons = topicLessons
                .where(
                  (lesson) =>
                      lessonProvider.isCompleted(lesson.id),
                )
                .length;

            QuizModel? topicQuiz;

            if (quizzes.length >= topic.order) {
              topicQuiz = quizzes[topic.order - 1];
            }

            return Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 6,
                ),
                leading: CircleAvatar(
                  backgroundColor: subject.color,
                  child: Text(
                    topic.order.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  topic.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),

                    Text(topic.description),

                    const SizedBox(height: 8),

                    LinearProgressIndicator(
                      value: topicLessons.isEmpty
                          ? 0
                          : completedLessons /
                              topicLessons.length,
                      color: subject.color,
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "$completedLessons/${topicLessons.length} lessons completed",
                    ),
                  ],
                ),
                children: [
                  ...topicLessons.map((lesson) {
                    final lessonIds =
                        topicLessons.map((e) => e.id).toList();
                    
                    final completed =
                        lessonProvider.isCompleted(lesson.id);
                        final unlocked =
                            lessonProvider.isLessonUnlocked(
                              lesson.id,
                              lessonIds,
                            );

                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      leading: CircleAvatar(
                        radius: 18,
                        backgroundColor: completed
                        ? Colors.green
                        : unlocked
                            ? subject.lightColor
                            : Colors.grey.shade300,
                        child: Icon(
                          completed
                              ? Icons.check
                              : unlocked
                                  ? Icons.play_arrow
                                  : Icons.lock,
                          color: completed
                              ? Colors.white
                              : unlocked
                                  ? subject.color
                                  : Colors.grey,
                          ),
                      ),
                      title: Text(
                        lesson.title,
                        style: TextStyle(
                          fontWeight: completed
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                      subtitle: Text(
                        "${lesson.durationMinutes} min • ${lesson.difficulty}",
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                      onTap: unlocked
                          ? () {
                              context.push(
                                "/lesson/${lesson.id}",
                                extra: lesson,
                              );
                      }
                  : null,
                    );
                  }),

                  if (topicQuiz != null) ...[
                    const Divider(
                      height: 28,
                      indent: 18,
                      endIndent: 18,
                    ),

                    Builder(
  builder: (context) {
    final lessonIds = topicLessons.map((e) => e.id).toList();
    final topicCompleted =
        lessonProvider.isTopicCompleted(lessonIds);

    return Column(
      children: [
        if (topicCompleted)
          const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.workspace_premium,
                  color: Colors.amber,
                ),
                SizedBox(width: 8),
                Text(
                  "Topic Completed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

        Padding(
          padding: const EdgeInsets.fromLTRB(
            18,
            0,
            18,
            18,
          ),
          child: SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              icon: const Icon(Icons.quiz),
              label: Text(
                "Take ${topic.title} Quiz",
              ),
              onPressed: topicCompleted
                  ? () {
                      context.push(
                        "/quiz",
                        extra: topicQuiz,
                      );
                    }
                  : null,
            ),
          ),
        ),
      ],
    );
  },
),
                  ],
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}