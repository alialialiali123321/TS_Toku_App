import 'package:flutter/material.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: const Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            text: 'FamilyMembers',
            color: Color(0xff558B37),
          ),
          Category(
            text: 'Colors',
            color: Color(0xff79359F),
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
