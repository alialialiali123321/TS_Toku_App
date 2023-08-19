import 'package:flutter/material.dart';

import '../components/item.dart';
import '../data/family_members_data.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            itemModel: familyMembers[index],
            color: const Color(0xff558B37),
          );
        },
      ),
    );
  }
}
