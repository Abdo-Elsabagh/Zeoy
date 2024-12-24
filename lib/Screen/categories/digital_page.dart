import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';

class DigitalPage extends StatelessWidget {
  const DigitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      ], leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
      body: Categories(
        image: 'asset/image/digital markting.jpeg',
        name: '\t \t digital\n marketing',
        nameOnTop1: 'خريطه التعلم',
        nameOnTop2: 'ابدا التلعم',
        onTop2: () {},
        onTop: () {},
      ),
    );
  }
}
