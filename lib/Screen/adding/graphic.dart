import 'package:flutter/material.dart';
import 'package:koey/components/categories_add2.dart';

class GraphicCategories extends StatelessWidget {
  const GraphicCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2e746a),
                    padding: const EdgeInsets.all(8),
                    minimumSize: const Size(300, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Graphic design',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
              const SizedBox(
                height: 20,
              ),
              Adding2(
                image: 'asset/image/photoshop.png',
                name: 'Photo Shop',
                onTop: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              Adding2(
                image: 'asset/image/illstritor.png',
                name: 'illustrator',
                onTop: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              Adding2(
                image: 'asset/image/indesien.png',
                name: 'Indesien',
                onTop: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
