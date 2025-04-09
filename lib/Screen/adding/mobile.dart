import 'package:flutter/material.dart';
import 'package:koey/components/categories_add2.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileCategories extends StatelessWidget {
  const MobileCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        'https://www.youtube.com/watch?v=cShqGV13qdo&list=PLoMmMinVeSkud4SURAo6ccR6MduZWTdTq');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }
 final Uri _url2 = Uri.parse(
        'https://www.youtube.com/watch?v=H6mvkrTnCzM&list=PLUsJIpFLVMiNV4gjX8TwrVccXFu9WWfzs');

    Future<void> _launchUrl2() async {
      if (!await launchUrl(_url2)) {
        throw Exception('Could not launch $_url');
      }
    }
   

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
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
                      'Mobile App',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Adding2(
                  image: 'asset/image/Flutter 2.png',
                  name: 'Flutter',
                  onTop: () {
                    _launchUrl();
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Adding2(
                  image: 'asset/image/React Native.jpeg',
                  name: 'React \n Native',
                  onTop: () {
                    _launchUrl2();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
