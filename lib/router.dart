import 'package:go_router/go_router.dart';

import 'package:foundationx/features/onboarding/screens/splash_screen.dart';
import 'package:foundationx/features/onboarding/screens/onboarding_screen.dart';
import 'package:foundationx/features/auth/screens/login_screen.dart';
import 'package:foundationx/features/auth/screens/register_screen.dart';
import 'package:foundationx/features/home/screens/main_navigation.dart';
import 'package:foundationx/features/chat/screens/ai_chat_screen.dart';
import 'package:foundationx/features/subjects/screens/subject_detail_screen.dart';
import 'package:foundationx/features/settings/screens/settings_screen.dart';
import 'package:foundationx/features/lesson/screens/lesson_detail_screen.dart';
import 'package:foundationx/features/quiz/screens/quiz_screen.dart';
import 'package:foundationx/core/models/models.dart';
import 'package:foundationx/features/profile/screens/achievements_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),

    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const MainNavigation(),
    ),

    GoRoute(
      path: '/chat',
      builder: (context, state) => const AIChatScreen(),
    ),

    GoRoute(
      path: '/subject/:id',
      builder: (context, state) => SubjectDetailScreen(
        subjectId: state.pathParameters['id']!,
      ),
    ),

    GoRoute(
      path: '/lesson/:id',
      builder: (context, state) {
        final lesson = state.extra as LessonModel;

        return LessonDetailScreen(
          lesson: lesson,
        );
      },
    ),

    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/quiz',
      builder: (context, state) {
        final quiz = state.extra as QuizModel;
        
        return QuizScreen(
          quiz: quiz,
        );
      },
    ),
    GoRoute(
  path: '/achievements',
  builder: (context, state) =>
      const AchievementsScreen(),
),
  ],
);
