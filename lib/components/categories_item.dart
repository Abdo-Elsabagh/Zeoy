import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories(
      {super.key,
      required this.image,
      required this.name,
      required this.onTop,
      required this.nameOnTop});
  String? image;
  String? name;

  VoidCallback? onTop;
  String? nameOnTop;

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
                  nameOnTop!,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                )),
          ],
        )),
      ),
    );
  }
}
