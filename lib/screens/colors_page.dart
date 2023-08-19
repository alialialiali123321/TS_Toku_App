import 'package:flutter/material.dart';

import '../components/item.dart';
import '../data/colors_data.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xFF46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            itemModel: colors[index],
            color: const Color(0xff79359F),
          );
        },
      ),
    );
  }
}
