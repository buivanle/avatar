import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String name;
  final String avatarUrl;

  AvatarWidget({required this.name, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 30,
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
