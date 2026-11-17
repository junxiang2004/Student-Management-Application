import 'package:flutter/material.dart';

import '../student_data.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Information"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo.shade100,
                child: Text(
                  student.name.isNotEmpty ? student.name[0] : 'S',
                  style: const TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                student.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("ID: ${student.id} | ${student.programme}"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentDetailsPage(student: student),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class StudentDetailsPage extends StatelessWidget {
  final dynamic student;

  const StudentDetailsPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.indigo.shade100,
                child: Text(
                  student.name.isNotEmpty ? student.name[0] : 'S',
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                student.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "ID: ${student.id}",
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
            ),
            const Divider(height: 32, thickness: 1),
            _buildDetailCard("Programme", student.programme, Icons.school),
            _buildDetailCard("Age", student.age.toString(), Icons.cake),
            _buildDetailCard(
              "CGPA",
              student.cgpa.toStringAsFixed(2),
              Icons.grade,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailCard(String label, String value, IconData icon) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
