import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/widgets/fx_app_bar.dart';
import '../../providers/theme_provider.dart';

import 'widgets/settings_info_card.dart';
import 'widgets/settings_section.dart';
import 'widgets/settings_switch_tile.dart';
import 'widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool achievements = true;
  bool haptics = true;
  bool dyslexiaFont = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: const FXAppBar(
        title: "Settings",
      ),
      body: ListView(
        children: [
          /// Appearance
          SettingsSection(
            title: "Appearance",
            children: [
              SettingsSwitchTile(
                icon: Icons.dark_mode_rounded,
                title: "Dark Mode",
                subtitle: "Switch between light and dark themes",
                value: themeProvider.isDarkMode,
                onChanged: (value) {
                  if (value) {
                    themeProvider.setDarkMode();
                    } else {
                      themeProvider.setLightMode();
                      }
                },
              ),

              SettingsTile(
                icon: Icons.palette_rounded,
                title: "Theme Accent",
                subtitle: "Foundation Blue",
                onTap: () {},
              ),
            ],
          ),

          /// Accessibility
          SettingsSection(
            title: "Accessibility",
            children: [
              SettingsTile(
                icon: Icons.text_fields_rounded,
                title: "Text Size",
                subtitle: "Medium",
                onTap: () {},
              ),

              SettingsSwitchTile(
                icon: Icons.menu_book_rounded,
                title: "Dyslexia Font",
                subtitle: "Improve reading accessibility",
                value: dyslexiaFont,
                onChanged: (value) {
                  setState(() {
                    dyslexiaFont = value;
                  });
                },
              ),

              SettingsSwitchTile(
                icon: Icons.vibration_rounded,
                title: "Haptic Feedback",
                subtitle: "Vibrate during interactions",
                value: haptics,
                onChanged: (value) {
                  setState(() {
                    haptics = value;
                  });
                },
              ),
            ],
          ),

          /// Notifications
          SettingsSection(
            title: "Notifications",
            children: [
              SettingsSwitchTile(
                icon: Icons.notifications_active_rounded,
                title: "Daily Reminder",
                subtitle: "Receive daily study reminders",
                value: notifications,
                onChanged: (value) {
                  setState(() {
                    notifications = value;
                  });
                },
              ),

              SettingsSwitchTile(
                icon: Icons.emoji_events_rounded,
                title: "Achievement Alerts",
                subtitle: "Notify when achievements are unlocked",
                value: achievements,
                onChanged: (value) {
                  setState(() {
                    achievements = value;
                  });
                },
              ),
            ],
          ),

          /// Downloads
          SettingsSection(
            title: "Downloads",
            children: [
              SettingsTile(
                icon: Icons.download_rounded,
                title: "Offline Lessons",
                subtitle: "Manage downloaded lessons",
                onTap: () {},
              ),

              const SettingsInfoCard(
                title: "Storage",
                items: [
                  InfoItem(
                    label: "Downloaded Lessons",
                    value: "18",
                  ),
                  InfoItem(
                    label: "Storage Used",
                    value: "512 MB",
                  ),
                  InfoItem(
                    label: "Cache",
                    value: "84 MB",
                  ),
                ],
              ),
            ],
          ),

          /// Account
          SettingsSection(
            title: "Account",
            children: [
              SettingsTile(
                icon: Icons.person_outline_rounded,
                title: "Edit Profile",
                onTap: () {},
              ),

              SettingsTile(
                icon: Icons.lock_outline_rounded,
                title: "Change Password",
                onTap: () {},
              ),

              SettingsTile(
                icon: Icons.logout_rounded,
                title: "Logout",
                iconColor: Colors.red,
                onTap: () {},
              ),
            ],
          ),

          /// About
          SettingsSection(
            title: "About",
            children: [
              SettingsTile(
                icon: Icons.info_outline_rounded,
                title: "About FoundationX",
                onTap: () {},
              ),

              SettingsTile(
                icon: Icons.privacy_tip_outlined,
                title: "Privacy Policy",
                onTap: () {},
              ),

              SettingsTile(
                icon: Icons.description_outlined,
                title: "Terms of Service",
                onTap: () {},
              ),

              const SettingsInfoCard(
                title: "Application",
                items: [
                  InfoItem(
                    label: "Version",
                    value: "1.0.0",
                  ),
                  InfoItem(
                    label: "Build",
                    value: "100",
                  ),
                  InfoItem(
                    label: "Environment",
                    value: "Production",
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}