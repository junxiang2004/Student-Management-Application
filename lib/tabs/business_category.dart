import 'package:flutter/material.dart';

import '../student_data.dart';

class Business extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final businessStudents = students
        .where(
          (students) =>
              students.programme.contains("Economics") ||
              students.programme.contains("Marketing") ||
              students.programme.contains("Finance"),
        )
        .toList();

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: SizedBox(
            width: constraints.maxWidth,
            child: DataTable(
              columnSpacing: 12,
              horizontalMargin: 8,
              headingRowColor: WidgetStateProperty.all(Colors.blue.shade100),
              columns: const [
                DataColumn(label: Text("Programme")),
                DataColumn(label: Text("ID")),
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Age")),
                DataColumn(label: Text("CGPA")),
              ],
              rows: businessStudents.map((students) {
                return DataRow(
                  cells: [
                    DataCell(Text(students.programme)),
                    DataCell(Text(students.id.toString())),
                    DataCell(Text(students.name)),
                    DataCell(Text(students.age.toString())),
                    DataCell(Text(students.cgpa.toStringAsFixed(2))),
                  ],
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
