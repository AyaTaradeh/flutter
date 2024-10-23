// widgets/icon_column.dart
import 'package:flutter/material.dart';

class IconColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final int? notificationCount;

  IconColumn({required this.icon, required this.label, this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Icon(
              icon,
              size: 36,
            ),
            if (notificationCount != null && notificationCount! > 0)
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '$notificationCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
