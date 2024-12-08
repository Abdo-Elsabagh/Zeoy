import 'package:flutter/material.dart';
import 'package:koey/model/item.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.item, this.onTop, this.onTop2});
  final ItemModel item;
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
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                    child: Image.asset(
                      item.image1,
                      width: 140,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                      child: Text(
                    item.name1,
                    style: const TextStyle(color: Colors.black),
                  ))
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTop2,
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                    child: Image.asset(
                      item.image2,
                      width: 140,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                   Center(
                      child: Text(
                    item.name2,
                    style: TextStyle(color: Colors.black),
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
