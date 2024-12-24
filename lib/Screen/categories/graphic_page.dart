import 'package:flutter/material.dart';
import 'package:koey/components/categories_item.dart';

class GraphicPage extends StatelessWidget {
  const GraphicPage({super.key});

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
          image: 'asset/image/graphic design.jpeg',
          name: 'Graphic\n desing',
          onTop: () {},
          nameOnTop: 'ابدا التلعم'),
    );
  }
}
