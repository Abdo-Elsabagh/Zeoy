import 'package:flutter/material.dart';

class Adding2 extends StatelessWidget {
  Adding2(
      {super.key,
      required this.image,
      required this.name,
      required this.onTop});
  VoidCallback onTop;
  String name;
  String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              )),
          const SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: const TextStyle(color: Color(0xff6f6f6f), fontSize: 30),
          ),
        ],
      ),
    );
  }
}
