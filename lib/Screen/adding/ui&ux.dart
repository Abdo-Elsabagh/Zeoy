import 'package:flutter/material.dart';
import 'package:koey/components/categories_add2.dart';
import 'package:url_launcher/url_launcher.dart';

class UiCategories extends StatelessWidget {
  const UiCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        'https://www.youtube.com/watch?v=7K7pEPFepWA&list=PLjzhiGLyugKynpBi7v2AWMCJgTrRI6Ne-');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }
  
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2e746a),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Ui&Ux Desing',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/figma.jpeg',
              name: 'Figma',
              onTop: () {
                _launchUrl();
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Adding2(
              image: 'asset/image/Adobe XD.jpeg',
              name: 'Adobe XD',
              onTop: () {},
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    ));
  }
}
