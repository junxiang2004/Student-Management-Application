import 'package:flutter/material.dart';

import 'student.dart';
import 'student_data.dart';

class StudentRecordPage extends StatefulWidget {
  const StudentRecordPage({super.key});

  @override
  State<StudentRecordPage> createState() => _StudentRecordPageState();
}

class _StudentRecordPageState extends State<StudentRecordPage> {
  final List<Student> _students = List.from(students);
  int _sortColumnIndex = 0;
  bool _isAscending = true;

  void _onSort(int columnIndex, bool ascending) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _isAscending = ascending;

      switch (columnIndex) {
        case 0:
          _students.sort(
            (a, b) => ascending ? a.id.compareTo(b.id) : b.id.compareTo(a.id),
          );
          break;
        case 1:
          _students.sort(
            (a, b) =>
                ascending ? a.name.compareTo(b.name) : b.name.compareTo(a.name),
          );
          break;
        case 2:
          _students.sort(
            (a, b) =>
                ascending ? a.age.compareTo(b.age) : b.age.compareTo(a.age),
          );
          break;
        case 3:
          _students.sort(
            (a, b) => ascending
                ? a.programme.compareTo(b.programme)
                : b.programme.compareTo(a.programme),
          );
          break;
        case 4:
          _students.sort(
            (a, b) =>
                ascending ? a.cgpa.compareTo(b.cgpa) : b.cgpa.compareTo(a.cgpa),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Records')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _sortColumnIndex,
            sortAscending: _isAscending,
            columns: [
              DataColumn(
                label: const Text('ID'),
                numeric: true,
                onSort: _onSort,
              ),
              DataColumn(label: const Text('Name'), onSort: _onSort),
              DataColumn(
                label: const Text('Age'),
                numeric: true,
                onSort: _onSort,
              ),
              DataColumn(label: const Text('Programme'), onSort: _onSort),
              DataColumn(
                label: const Text('CGPA'),
                numeric: true,
                onSort: _onSort,
              ),
            ],
            rows: _students
                .map(
                  (s) => DataRow(
                    cells: [
                      DataCell(Text('${s.id}')),
                      DataCell(Text(s.name)),
                      DataCell(Text('${s.age}')),
                      DataCell(Text(s.programme)),
                      DataCell(Text(s.cgpa.toStringAsFixed(2))),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
