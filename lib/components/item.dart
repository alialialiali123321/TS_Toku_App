import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class Item extends StatelessWidget {
  final ItemModel itemModel;
  final Color color;

  const Item({
    super.key,
    required this.itemModel,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(right: 16.0),
      color: color,
      child: Row(
        children: [
          ConditionalBuilder(
            condition: itemModel.image != null,
            builder: (context) => Container(
              color: const Color(0xffFFF6DC),
              child: Image(
                image: AssetImage(itemModel.image!),
              ),
            ),
            fallback: (context) => const SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              itemModel.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
