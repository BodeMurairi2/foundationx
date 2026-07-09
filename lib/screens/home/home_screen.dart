import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/app_providers.dart';
import '../../data/app_data.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/xp_progress_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return Scaffold(
      appBar: AppBar(title: const Text("FoundationX"), actions: [IconButton(icon: const Icon(Icons.chat), onPressed: () => context.go('/chat'))]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting + XP
            Text("Hello, ${user.username} 👋", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            XPProgressBar(user: user),
            
            const SizedBox(height: 24),
            
            // Daily Quiz Card
            Card(
              child: ListTile(
                leading: const Icon(Icons.today, size: 40, color: Colors.orange),
                title: const Text("Daily Quiz", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(user.canTakeDailyQuiz ? "Ready now!" : "Locked for 24 hours"),
                trailing: ElevatedButton(
                  onPressed: user.canTakeDailyQuiz 
                    ? () { /* Navigate to quiz with daily */ }
                    : null,
                  child: const Text("Start"),
                ),
              ),
            ),

            const SizedBox(height: 24),
            const Text("Continue Learning", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            // Recommended lessons grid...
          ],
        ),
      ),
    );
  }
}