import 'package:flutter/material.dart';

class Coures extends StatelessWidget {
  Coures(
      {super.key,
      required this.name1,
      required this.name2,
      required this.name3,
      required this.name4,
      required this.onTop1,
      required this.onTop2,
      required this.onTop3,
      required this.onTop4});
  String name1;
  String name2;
  String name3;
  String name4;
  VoidCallback onTop1;
  VoidCallback onTop2;
  VoidCallback onTop3;
  VoidCallback onTop4;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: onTop1,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            alignment: Alignment.center,
            child: Text(
              name1,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTop2,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            alignment: Alignment.center,
            child: Text(
              name2,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTop3,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            alignment: Alignment.center,
            child: Text(
              name3,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTop4,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            alignment: Alignment.center,
            child: Text(
              name4,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
