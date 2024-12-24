import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
        body: Categories(
            image: 'asset/image/web .jpeg',
            name: '\t  \t  \tWeb \n Development',
            onTop: () {},
            onTop2: () {},
            nameOnTop1: 'خريطه التعلم',
            nameOnTop2: 'ابدا التلعم'));
  }
}
