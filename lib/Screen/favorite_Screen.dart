import 'package:flutter/material.dart';
import 'package:koey/Screen/add%202/back_end.dart';
import 'package:koey/Screen/add%202/front_end.dart';
import 'package:koey/Screen/categories/ui_page.dart';
import 'package:koey/components/categories_add.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
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
                    'Favorit course',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView(
              children: [
                Adding(
                    image: 'asset/image/Front end.png',
                    onTop: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (scontext) => const FrontEndCategories2(),
                      ));
                    },
                    name: 'Front end'),
                const SizedBox(
                  height: 20,
                ),
                Adding(
                    image: 'asset/image/Back end.jpeg',
                    onTop: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (scontext) => const BackEndCategories2(),
                      ));
                    },
                    name: 'Back End '),
                const SizedBox(
                  height: 20,
                ),
                Adding(
                    image: 'asset/image/Flutter 2.png',
                    onTop: () {},
                    name: 'Flutter'),
                const SizedBox(
                  height: 20,
                ),
                Adding(
                    image: 'asset/image/UI& UX.png',
                    onTop: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UiPage(),
                      ));
                    },
                    name: 'UI & UX'),
              ],
            ))
          ])),
    );
  }
}
