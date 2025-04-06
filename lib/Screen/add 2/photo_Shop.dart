import 'package:flutter/material.dart';
import 'package:koey/components/categories_add.dart';

class PhotoShop2 extends StatelessWidget {
  const PhotoShop2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Adding(
                image: 'asset/image/Phtoshope biginner.jpeg',
                onTop: () {},
                name: 'PhotoShop \nFor Beginner'),
            const SizedBox(
              height: 20,
            ),
            Adding(
                image: 'asset/image/Phtoshope advanced.jpeg',
                onTop: () {},
                name: 'PhotoShop\nFor Advance'),
          ],
        ),
      ),
    ));
  }
}
