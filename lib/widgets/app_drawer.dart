import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigation_provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _selectPage(BuildContext context, int index) {
    Navigator.pop(context);

    if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('About')),
            body: const Center(child: Text('')),
          ),
        ),
      );
    } else {
      context.read<NavigationProvider>().changePage(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.school, size: 50, color: Colors.white),
                SizedBox(height: 15),
                Text(
                  'StudentHub',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => _selectPage(context, 0),
          ),

          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Students'),
            onTap: () => _selectPage(context, 1),
          ),

          ListTile(
            leading: const Icon(Icons.table_chart),
            title: const Text('Records'),
            onTap: () => _selectPage(context, 2),
          ),

          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Programmes'),
            onTap: () => _selectPage(context, 3),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () => _selectPage(context, 4),
          ),
        ],
      ),
    );
  }
}
