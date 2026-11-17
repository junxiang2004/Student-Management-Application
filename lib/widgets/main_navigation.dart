import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';
import '../category_programme.dart';
import '../student_record_page.dart';
import 'app_drawer.dart';
import 'navigation_provider.dart';
import 'profile_about_page.dart'; // Added Profile Page

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
      StudentRecordPage(),
      CategoryProgrammePage(),

      // Profile / About Page
      ProfileAboutPage(),
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
        selectedIndex: currentIndex < 4 ? currentIndex : 0,

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
