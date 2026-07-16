import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              OnboardingPage(title: "Master Foundations", desc: "Build strong basics for JSS & SSS", icon: "📚"),
              OnboardingPage(title: "Daily Quizzes", desc: "Learn consistently and earn XP", icon: "🏆"),
              OnboardingPage(title: "FoundationX AI", desc: "Your personal tutor anytime", icon: "🤖"),
              OnboardingPage(title: "Track Progress", desc: "See your growth in real-time", icon: "📈"),
            ],
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SmoothPageIndicator(controller: _controller, count: 4, effect: const ExpandingDotsEffect(dotColor: Colors.grey)),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => context.go('/login'),
                  child: const Text("Get Started"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title, desc, icon;
  const OnboardingPage({super.key, required this.title, required this.desc, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(icon, style: const TextStyle(fontSize: 120)),
          const SizedBox(height: 40),
          Text(title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(desc, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}