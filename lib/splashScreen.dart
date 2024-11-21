import 'package:flutter/material.dart';
import 'package:koey/auth/login_viem.dart';

class SplahScreen extends StatelessWidget {
  const SplahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('asset/image/Zoey-removebg-preview.png'),
            const Text(
              'Zeoy  مرحبا انا',
              style: TextStyle(fontSize: 24, color: Color(0xff6f6f6f)),
            ),
            const Text(
              'سأكون مرشدك طوال رحلة تعلمك \n   أتمنى ان تكون رحله ممتعه',
              style: TextStyle(fontSize: 24, color: Color(0xff6f6f6f)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff81cdc2),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ));
                },
                child: const Text('Get Started'))
          ],
        ),
      ),
    );
  }
}
