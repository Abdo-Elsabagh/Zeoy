import 'package:flutter/material.dart';
import 'package:koey/Screen/categories/ai_page.dart';
import 'package:koey/Screen/categories/digital_page.dart';
import 'package:koey/Screen/categories/graphic_page.dart';
import 'package:koey/Screen/categories/mobile_page.dart';
import 'package:koey/Screen/categories/ui_page.dart';
import 'package:koey/Screen/categories/web_page.dart';
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
            Center(
              child: ElevatedButton(
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
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView(
              children: [
                Item(
                  onTop: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WebPage(),
                    ));
                  },
                  onTop2: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MobilePage(),
                    ));
                  },
                  image1: 'asset/image/web .jpeg',
                  image2: 'asset/image/mobile app.jpg',
                  name1: '\t  \t  \tWeb \n Development',
                  name2: '\t \t \t Mobile\n Development',
                ),
                const SizedBox(
                  height: 10,
                ),
                Item(
                  onTop: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AiPage(),
                    ));
                  },
                  onTop2: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (scontext) => const GraphicPage(),
                    ));
                  },
                  image1: 'asset/image/AI.jpeg',
                  image2: 'asset/image/graphic design.jpeg',
                  name1: 'AI',
                  name2: 'Graphic\n desing',
                ),
                const SizedBox(
                  height: 10,
                ),
                Item(
                  onTop: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DigitalPage(),
                    ));
                  },
                  onTop2: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UiPage(),
                    ));
                  },
                  image1: 'asset/image/digital markting.jpeg',
                  image2: 'asset/image/UI& UX.png',
                  name1: '\t \t digital\n marketing',
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
