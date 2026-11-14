import 'package:flutter/material.dart';

import 'tabs/computer_category.dart';
import 'tabs/business_category.dart';
import 'tabs/engineer_category.dart';

class CategoryProgrammePage extends StatelessWidget {
  const CategoryProgrammePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Computer"),
              Tab(text: "Business"),
              Tab(text: "Engineer"),
            ],
          ),
          Expanded(
            child: TabBarView(children: [Computer(), Business(), Engineer()]),
          ),
        ],
      ),
    );
  }
}
