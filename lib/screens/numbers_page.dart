import 'package:flutter/material.dart';

import '../components/item.dart';
import '../data/numbers_data.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            itemModel: numbers[index],
            color: const Color(0xffEF9235),
          );
        },
      ),
    );
  }
}
