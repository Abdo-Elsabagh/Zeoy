import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';

class AiPage extends StatelessWidget {
  const AiPage({super.key});

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
          image: 'asset/image/AI.jpeg',
          name: 'AI',
          onTop: () {},
          onTop2: () {},
          nameOnTop1: 'خريطه التعلم',
          nameOnTop2: 'ابدا التلعم'),
    );
  }
}
