import 'package:flutter/material.dart';
import 'package:koey/Screen/add%203/html.dart';
import 'package:koey/components/categories_add2.dart';
import 'package:url_launcher/url_launcher.dart';

class BackEndCategories2 extends StatelessWidget {
  const BackEndCategories2({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
      'https://www.youtube.com/watch?v=xcg9qq6SZ0w&list=PLDoPjvoNmBAy41u35AqJUrI-H83DObUDq',
    );

    Future<void> _launchUrl() async {
      // هنا بنستخدم launchUrl من المكتبة مش الدالة نفسها
      if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
        throw Exception('Could not launch $_url');
      }
    }

    final Uri _url2 = Uri.parse(
        'https://www.youtube.com/watch?v=bXjRQM_VK_I&list=PLDoPjvoNmBAy_mAhY0x8cHf8oSGPKsEKP');

    Future<void> _launchUr() async {
      if (!await launchUrl(_url2)) {
        throw Exception('Could not launch $_url2');
      }
    }

    final Uri _ur2 = Uri.parse(
        'https://www.youtube.com/watch?v=DftlOK7fCtc&list=PLDoPjvoNmBAz6DT8SzQ1CODJTH-NIA7R9');

    Future<void> _launchUr2() async {
      if (!await launchUrl(_ur2)) {
        throw Exception('Could not launch $_ur2');
      }
    }

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2e746a),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Back End',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/HTML green.jpeg',
              name: 'HTML',
              onTop: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (scontext) => const HtmalNumber(),
                ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/PHP 2.png',
              name: 'PHP',
              onTop: () {
                _launchUrl();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/Laravel 1.jpg',
              name: 'Laravel',
              onTop: () {
                _launchUr();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/my sql.png',
              name: 'My SQL',
              onTop: () {
                _launchUr2();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
