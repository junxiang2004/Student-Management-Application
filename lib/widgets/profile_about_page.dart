
import 'package:flutter/material.dart';

class ProfileAboutPage extends StatelessWidget {
  const ProfileAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile & About'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Header using Stack
            SizedBox(
              height: 190,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colors.primary,
                          colors.tertiary,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Profile',
                          style: TextStyle(
                            color: colors.onPrimary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your Name',
                          style: TextStyle(
                            color: colors.onPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'StudentHub Developer',
                          style: TextStyle(
                            color: colors.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 25,
                    child: Icon(
                      Icons.school,
                      size: 85,
                      color: colors.onPrimary.withValues(alpha: 0.2),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Developer Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Developer Information',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),

                    const ProfileInfoTile(
                      icon: Icons.person,
                      label: 'Full Name',
                      value: 'Your Name',
                    ),
                    const ProfileInfoTile(
                      icon: Icons.badge,
                      label: 'Matric Number',
                      value: '102992',
                    ),
                    const ProfileInfoTile(
                      icon: Icons.school,
                      label: 'Programme',
                      value: 'Your Programme',
                    ),
                    const ProfileInfoTile(
                      icon: Icons.email,
                      label: 'Email',
                      value: 'your@email.com',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // About Application
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About StudentHub',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'StudentHub is a Student Management '
                          'Application designed to help users '
                          'manage and organise student information '
                          'and academic records efficiently.',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Application Features',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        Chip(label: Text('Student Information')),
                        Chip(label: Text('Student Records')),
                        Chip(label: Text('Student Details')),
                        Chip(label: Text('Programmes')),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

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
                    leading: Icon(Icons.info),
                    title: Text('Version'),
                    subtitle: Text('1.0.0'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Course'),
                    subtitle: Text(
                      'TMA3084 - Software Engineering Laboratory',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                '© 2026 StudentHub. All Rights Reserved.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Developer Information Widget
class ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: SelectableText(value),
    );
  }
}
