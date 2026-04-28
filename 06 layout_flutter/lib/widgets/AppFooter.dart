import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      child: const Text(
        '© 2026 Marketplace App',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}