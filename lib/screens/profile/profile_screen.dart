import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/app_providers.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;

    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CircleAvatar(radius: 50, child: Text(user.username[0], style: const TextStyle(fontSize: 40))),
          const SizedBox(height: 16),
          Text(user.username, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          Text("${user.grade} • ${user.school}"),
          const SizedBox(height: 30),
          ListTile(leading: const Icon(Icons.star), title: const Text("Level"), trailing: Text("${user.level}")),
          ListTile(leading: const Icon(Icons.celebration), title: const Text("XP"), trailing: Text("${user.xpPoints}")),
          ListTile(leading: const Icon(Icons.settings), title: const Text("Settings"), onTap: () => context.push('/settings')),
          ListTile(leading: const Icon(Icons.logout), title: const Text("Logout"), onTap: () => context.go('/login')),
        ],
      ),
    );
  }
}