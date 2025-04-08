import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Sorry, you do not have any Notification 😔',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
