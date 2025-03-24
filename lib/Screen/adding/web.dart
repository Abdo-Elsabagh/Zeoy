import 'package:flutter/material.dart';
import 'package:koey/components/categories_add.dart';

class WebCategories extends StatelessWidget {
  const WebCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Adding(
                image: 'asset/image/Front end.png',
                onTop: () {},
                name: 'Front end'),
            const SizedBox(
              height: 20,
            ),
            Adding(
                image: 'asset/image/Back end.jpeg',
                onTop: () {},
                name: 'Back End '),
          
          ],
        ),
      ),
    );
  }
}
