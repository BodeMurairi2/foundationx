import 'package:flutter/material.dart';

import 'package:foundationx/core/theme/app_colors.dart';

enum FXButtonType {
  primary,
  secondary,
  outlined,
  text,
}

class FXButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final FXButtonType type;
  final IconData? icon;
  final bool loading;
  final bool expanded;
  final double height;
  final Color? color;

  const FXButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = FXButtonType.primary,
    this.icon,
    this.loading = false,
    this.expanded = true,
    this.height = 56,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: expanded ? double.infinity : null,
      height: height,
      child: _buildButton(context),
    );
  }

  Widget _buildButton(BuildContext context) {
    final primaryColor = color ?? AppColors.primary;

    switch (type) {
      case FXButtonType.primary:
        return ElevatedButton(
          onPressed: loading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            disabledBackgroundColor: AppColors.disabled,
            disabledForegroundColor: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: _buildChild(context, Colors.white),
        );

      case FXButtonType.secondary:
        return ElevatedButton(
          onPressed: loading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: primaryColor.withValues(alpha: 0.12),
            foregroundColor: primaryColor,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: _buildChild(context, primaryColor),
        );

      case FXButtonType.outlined:
        return OutlinedButton(
          onPressed: loading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: primaryColor,
            side: BorderSide(
              color: primaryColor,
              width: 1.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: _buildChild(context, primaryColor),
        );

      case FXButtonType.text:
        return TextButton(
          onPressed: loading ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: _buildChild(context, primaryColor),
        );
    }
  }

  Widget _buildChild(BuildContext context, Color textColor) {
    if (loading) {
      return SizedBox(
        height: 22,
        width: 22,
        child: CircularProgressIndicator(
          strokeWidth: 2.5,
          color: textColor,
        ),
      );
    }

    final textWidget = Text(
      text,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
    );

    if (icon == null) {
      return textWidget;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 20,
          color: textColor,
        ),
        const SizedBox(width: 8),
        textWidget,
      ],
    );
  }
}