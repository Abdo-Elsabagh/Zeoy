import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories(
      {super.key,
      required this.image,
      required this.name,
      required this.onTop,
      required this.onTop2,
      required this.nameOnTop1,
      required this.nameOnTop2});
  String? image;
  String? name;
  VoidCallback? onTop;
  VoidCallback? onTop2;
  String? nameOnTop1;
  String? nameOnTop2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              name!,
              style: const TextStyle(color: Color(0xff6f6f6f), fontSize: 24),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2e746a),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: onTop,
                child: Text(
                  nameOnTop1!,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2e746a),
                  padding: const EdgeInsets.all(8),
                  minimumSize: const Size(300, 50),
                ),
                onPressed: onTop2,
                child: Text(
                  nameOnTop2!,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                )),
          ],
        )),
      ),
    );
  }
}
