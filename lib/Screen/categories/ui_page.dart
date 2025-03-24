import 'package:flutter/material.dart';
import 'package:koey/Screen/adding/ui&ux.dart';
import 'package:koey/components/categories_item.dart';

class UiPage extends StatelessWidget {
  const UiPage({super.key});

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
          image: 'asset/image/UI& UX.png',
          name: 'UI & UX',
          onTop: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (scontext) => const UiCategories(),
            ));
          },
          nameOnTop: 'ابدا التعلم'),
    );
  }
}
