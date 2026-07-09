import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/main_navigation.dart';
import 'screens/chat/ai_chat_screen.dart';
import 'screens/subjects/subject_detail_screen.dart';
import 'screens/profile/settings_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/onboarding', builder: (context, state) => const OnboardingScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/register', builder: (context, state) => const RegisterScreen()),
    GoRoute(path: '/home', builder: (context, state) => const MainNavigation()),
    GoRoute(path: '/chat', builder: (context, state) => const AIChatScreen()),
    GoRoute(path: '/subject/:id', builder: (context, state) => SubjectDetailScreen(subjectId: state.pathParameters['id']!)),
    GoRoute(path: '/settings', builder: (context, state) => const SettingsScreen()),
  ],
);