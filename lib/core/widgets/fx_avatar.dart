import 'package:flutter/material.dart';

class FXAvatar extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  final double radius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool showOnlineIndicator;
  final VoidCallback? onTap;

  const FXAvatar({
    super.key,
    this.name,
    this.imageUrl,
    this.radius = 28,
    this.backgroundColor,
    this.foregroundColor,
    this.showOnlineIndicator = false,
    this.onTap,
  });

  String get _initials {
    if (name == null || name!.trim().isEmpty) return "?";

    final parts = name!.trim().split(" ");

    if (parts.length == 1) {
      return parts.first[0].toUpperCase();
    }

    return (parts.first[0] + parts.last[0]).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final avatar = Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor:
              backgroundColor ?? Theme.of(context).colorScheme.primaryContainer,
          backgroundImage:
              imageUrl != null && imageUrl!.isNotEmpty
                  ? NetworkImage(imageUrl!)
                  : null,
          child: imageUrl == null || imageUrl!.isEmpty
              ? Text(
                  _initials,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: foregroundColor ??
                            Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                )
              : null,
        ),

        if (showOnlineIndicator)
          Positioned(
            bottom: 2,
            right: 2,
            child: Container(
              width: radius * 0.45,
              height: radius * 0.45,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  width: 2,
                ),
              ),
            ),
          ),
      ],
    );

    if (onTap == null) {
      return avatar;
    }

    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: onTap,
      child: avatar,
    );
  }
}