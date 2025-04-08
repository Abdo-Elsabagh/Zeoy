import 'package:flutter/material.dart';
import 'package:koey/Screen/NavigationBar.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const NavigationScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          strokeWidth: 6.0,
        ),
      ),
    );
  }
}
