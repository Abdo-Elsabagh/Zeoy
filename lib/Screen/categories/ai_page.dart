import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';
import 'package:url_launcher/url_launcher.dart';

class AiPage extends StatelessWidget {
  const AiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        'https://www.youtube.com/watch?v=vC_0hhOi2iw&list=PL9J0c3ttbHD7SMKv-V4-Y4ePSi6d7bKYZ');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
      body: Categories(
          image: 'asset/image/AI.jpeg',
          name: 'AI',
          onTop: () {
            _launchUrl();
          },
          nameOnTop: 'ابدا التعلم'),
    );
  }
}
