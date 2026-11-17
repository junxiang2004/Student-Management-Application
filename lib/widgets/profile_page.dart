
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.indigo,
                    Colors.blueAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 55,
                      color: Colors.indigo,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Your Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'StudentHub Developer',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Personal Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Full Name'),
                      subtitle: SelectableText('Your Name'),
                    ),

                    const ListTile(
                      leading: Icon(Icons.badge),
                      title: Text('Matric Number'),
                      subtitle: SelectableText('102992'),
                    ),

                    const ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Programme'),
                      subtitle: SelectableText(
                        'Your Programme',
                      ),
                    ),

                    const ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email Address'),
                      subtitle: SelectableText(
                        'your@email.com',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'StudentHub Developer Profile',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
