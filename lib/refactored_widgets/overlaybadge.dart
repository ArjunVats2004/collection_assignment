import 'package:flutter/material.dart';

class OverlayBadge extends StatelessWidget {
  final int extraCount;
  const OverlayBadge({required this.extraCount});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8,
      top: 0,
      bottom: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "+$extraCount",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
