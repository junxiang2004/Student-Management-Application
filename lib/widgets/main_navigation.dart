import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';
import 'app_drawer.dart';
import 'navigation_provider.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.select<NavigationProvider, int>(
      (provider) => provider.currentIndex,
    );

    const pages = [
      HomePage(),
      Center(child: Text('')),
      Center(child: Text('')),
      Center(child: Text('')),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentHub'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      drawer: const AppDrawer(),

      body: pages[currentIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,

        onDestinationSelected: (index) {
          context.read<NavigationProvider>().changePage(index);
        },

        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),

          NavigationDestination(icon: Icon(Icons.people), label: 'Students'),

          NavigationDestination(
            icon: Icon(Icons.table_chart),
            label: 'Records',
          ),

          NavigationDestination(icon: Icon(Icons.school), label: 'Programmes'),
        ],
      ),
    );
  }
}
