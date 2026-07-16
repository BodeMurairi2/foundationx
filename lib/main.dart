import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:foundationx/core/theme/app_theme.dart';
import 'package:foundationx/core/providers/app_providers.dart';
import 'package:foundationx/core/providers/theme_provider.dart';
import 'package:foundationx/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: AppProviders.providers(prefs),
      child: const FoundationXApp(),
    ),
  );
}

class FoundationXApp extends StatelessWidget {
  const FoundationXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp.router(
          title: 'FoundationX',
          debugShowCheckedModeBanner: false,

          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,

          themeMode: themeProvider.themeMode,

          routerConfig: appRouter,
        );
      },
    );
  }
}
