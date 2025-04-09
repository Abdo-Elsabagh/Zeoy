import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DigitalPage extends StatelessWidget {
  const DigitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        'https://www.youtube.com/watch?v=Kve6H57pkDw&list=PLdUaS_5kt47lYK8PfvRYIYljYpD1_YQun');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      ], leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
      body: Categories(
        image: 'asset/image/digital markting.jpeg',
        name: '\t \t digital\n marketing',
        nameOnTop: 'ابدا التعلم',
        onTop: () {
          _launchUrl();
        },
      ),
    );
  }
}
