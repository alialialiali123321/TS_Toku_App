import 'package:flutter/material.dart';

import '../components/item.dart';
import '../data/phrases_data.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            itemModel: phrases[index],
            color: const Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
