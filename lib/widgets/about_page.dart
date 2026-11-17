import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigation_provider.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // Navigate to the selected application section
  void _openSection(BuildContext context, int index) {
    final navigation = context.read<NavigationProvider>();

    navigation.changePage(index);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About StudentHub'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            // Application Logo
            const SizedBox(height: 20),

            const Icon(Icons.school, size: 85, color: Colors.indigo),

            const SizedBox(height: 15),

            const Center(
              child: Text(
                'StudentHub',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),

            const Center(
              child: Text(
                'Student Management Application',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 30),

            // About Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'StudentHub is a Student Management '
                      'Application designed to help users '
                      'manage and organise student information '
                      'and academic records efficiently.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Application Features
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'Application Features',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Student Information
                    ListTile(
                      leading: const Icon(Icons.people, color: Colors.indigo),

                      title: const Text('Student Information'),

                      subtitle: const Text('View and manage student details.'),

                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),

                      onTap: () {
                        _openSection(context, 1);
                      },
                    ),

                    // Student Records
                    ListTile(
                      leading: const Icon(
                        Icons.table_chart,
                        color: Colors.indigo,
                      ),

                      title: const Text('Student Records'),

                      subtitle: const Text(
                        'View and organise student records.',
                      ),

                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),

                      onTap: () {
                        _openSection(context, 2);
                      },
                    ),

                    // Programmes
                    ListTile(
                      leading: const Icon(Icons.school, color: Colors.indigo),

                      title: const Text('Programmes'),

                      subtitle: const Text(
                        'Browse different academic programmes.',
                      ),

                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),

                      onTap: () {
                        _openSection(context, 3);
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Application Details
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.apps),

                    title: Text('Application Name'),

                    subtitle: Text('StudentHub'),
                  ),

                  Divider(height: 1),

                  ListTile(
                    leading: Icon(Icons.info_outline),

                    title: Text('Version'),

                    subtitle: Text('1.0.0'),
                  ),

                  Divider(height: 1),

                  ListTile(
                    leading: Icon(Icons.book),

                    title: Text('Course'),

                    subtitle: Text('TMA3084 - Software Engineering Laboratory'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Copyright
            const Center(
              child: Text(
                '© 2026 StudentHub. All Rights Reserved.',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
