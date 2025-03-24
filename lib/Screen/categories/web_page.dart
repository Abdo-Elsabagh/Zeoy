import 'package:flutter/material.dart';
import 'package:koey/Screen/adding/web.dart';
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
            onTop: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (scontext) => const WebCategories(),
              ));
            },
            nameOnTop: 'ابدا التعلم'));
  }
}
