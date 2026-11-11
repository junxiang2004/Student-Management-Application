import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Welcome to StudentHub!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10),

          Text(
            'Student Management Application',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 30),

          Text(
            'Student Summary',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          Card(
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text('Total Students'),
              trailing: Text('10'),
            ),
          ),

          SizedBox(height: 10),

          Card(
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text('Total Programmes'),
              trailing: Text('3'),
            ),
          ),
        ],
      ),
    );
  }
}