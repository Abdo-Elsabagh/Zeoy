import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

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
        image: 'asset/image/mobile app.jpg',
        name: '\t \t \t Mobile\n Development',
        nameOnTop1: 'خريطه التعلم',
        nameOnTop2: 'ابدا التلعم',
        onTop2: () {},
        onTop: () {},
      ),
    );
  }
}
