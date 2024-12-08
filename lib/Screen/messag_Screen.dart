import 'package:flutter/material.dart';

class MessagScreen extends StatelessWidget {
  const MessagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Messag',
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
