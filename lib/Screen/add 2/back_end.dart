import 'package:flutter/material.dart';
import 'package:koey/Screen/add%203/html.dart';
import 'package:koey/components/categories_add2.dart';

class BackEndCategories2 extends StatelessWidget {
  const BackEndCategories2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2e746a),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Back End',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                )),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/HTML green.jpeg',
              name: 'HTML',
              onTop: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (scontext) => const HtmalNumber(),
                ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/PHP 2.png',
              name: 'PHP',
              onTop: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/Laravel 1.jpg',
              name: 'Laravel',
              onTop: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Adding2(
              image: 'asset/image/my sql.png',
              name: 'My SQL',
              onTop: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
