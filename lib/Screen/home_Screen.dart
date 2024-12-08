import 'package:flutter/material.dart';
import 'package:koey/components/home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2e746a),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Categories',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView(
              children: [
                Item(
                  onTop: () {},
                  onTop2: () {},
                  image1: 'asset/image/web .jpeg',
                  image2: 'asset/image/mobile app.jpeg',
                  name1: 'Web \n Development',
                  name2: 'Mobile\n Development',
                ),
                const SizedBox(
                  height: 10,
                ),
                Item(
                  onTop: () {},
                  onTop2: () {},
                  image1: 'asset/image/AI.jpeg',
                  image2: 'asset/image/graphic design.jpeg',
                  name1: 'AI',
                  name2: 'Graphic\n  desing',
                ),
                const SizedBox(
                  height: 10,
                ),
                Item(
                  onTop: () {},
                  onTop2: () {},
                  image1: 'asset/image/digital markting.jpeg',
                  image2: 'asset/image/UI& UX.png',
                  name1: 'digital\n marketing',
                  name2: 'UI & UX',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
