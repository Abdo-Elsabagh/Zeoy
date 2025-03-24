import 'package:flutter/material.dart';

class Adding extends StatelessWidget {
  Adding(
      {super.key,
      required this.image,
      required this.onTop,
      required this.name});
  String image;
  String name;
  VoidCallback? onTop;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.grey),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.black, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
