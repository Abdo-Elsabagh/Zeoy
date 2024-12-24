import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Item(
      {super.key,
      this.name1,
      this.name2,
      this.onTop,
      this.onTop2,
      this.image1,
      this.image2});

  String? image1;
  String? image2;
  String? name1;
  String? name2;
  VoidCallback? onTop;
  VoidCallback? onTop2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: onTop,
          child: Container(
            height: 220,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image1!,
                        width: 140,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    name1!,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ))
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTop2,
          child: Container(
            height: 220,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image2!,
                        width: 140,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    name2!,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
