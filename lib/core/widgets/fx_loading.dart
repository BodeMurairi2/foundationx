import 'package:flutter/material.dart';

class FXLoading extends StatelessWidget {
  final String? message;
  final double size;
  final bool fullscreen;

  const FXLoading({
    super.key,
    this.message,
    this.size = 40,
    this.fullscreen = false,
  });

  @override
  Widget build(BuildContext context) {
    final widget = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        if (message != null) ...[
          const SizedBox(height: 20),

          Text(
            message!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ],
    );

    if (fullscreen) {
      return Scaffold(
        body: Center(
          child: widget,
        ),
      );
    }

    return Center(
      child: widget,
    );
  }
}