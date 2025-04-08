import 'package:flutter/material.dart';
import 'package:koey/Screen/add%203/css.dart';
import 'package:koey/Screen/add%203/html.dart';
import 'package:koey/components/categories_add2.dart';

class FrontEndCategories2 extends StatelessWidget {
  const FrontEndCategories2({super.key});

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
                    'Front End',
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
                image: 'asset/image/CSS GREEN.jpeg',
                name: 'CSS',
                onTop: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (scontext) => const CssNumber(),
                  ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Adding2(
                image: 'asset/image/JAVA SCRIPT GREEN.png',
                name: 'jave Script',
                onTop: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Adding2(
                image: 'asset/image/git hub.png',
                name: 'Git & GitHub',
                onTop: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
