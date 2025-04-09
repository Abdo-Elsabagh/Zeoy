import 'package:flutter/material.dart';
import 'package:koey/components/categories_add.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoShop2 extends StatelessWidget {
  const PhotoShop2({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        'https://youtube.com/playlist?list=PLrmCLtyHNeXi7sIZy02AaQV6lfT5kc1QN&si=KyOPQQdHmAd6zKMc');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    final Uri _url2 = Uri.parse(
        'https://www.youtube.com/playlist?list=PLrmCLtyHNeXg2yZsCeIEJ-boyS5W07zy9');

    Future<void> _launchUr() async {
      if (!await launchUrl(_url2)) {
        throw Exception('Could not launch $_url2');
      }
    }

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Adding(
                image: 'asset/image/Phtoshope biginner.jpeg',
                onTop: () {
                  _launchUrl();
                },
                name: 'PhotoShop \nFor Beginner'),
            const SizedBox(
              height: 20,
            ),
            Adding(
                image: 'asset/image/Phtoshope advanced.jpeg',
                onTop: () {
                  _launchUr();
                },
                name: 'PhotoShop\nFor Advance'),
          ],
        ),
      ),
    ));
  }
}
