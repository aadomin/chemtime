import 'package:flutter/material.dart';

class WidgetGroupTile extends StatelessWidget {
  const WidgetGroupTile({required this.groupName, super.key});

  final String groupName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        groupName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
