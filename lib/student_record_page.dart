import 'package:flutter/material.dart';

class Student {
  final int id;
  final String name;
  final int age;
  final String programme;
  final double cgpa;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.programme,
    required this.cgpa,
  });
}

class StudentRecordPage extends StatefulWidget {
  const StudentRecordPage({super.key});

  @override
  State<StudentRecordPage> createState() => _StudentRecordPageState();
}

class _StudentRecordPageState extends State<StudentRecordPage> {
  final List<Student> _students = [
    Student(
      id: 101,
      name: 'John Doe',
      age: 20,
      programme: 'Computer Science',
      cgpa: 3.85,
    ),
    Student(
      id: 102,
      name: 'Sarah Lee',
      age: 22,
      programme: 'Finance',
      cgpa: 3.42,
    ),
    Student(
      id: 103,
      name: 'Michael Tan',
      age: 21,
      programme: 'Marketing',
      cgpa: 3.15,
    ),
    Student(
      id: 104,
      name: 'Aminul Islam',
      age: 23,
      programme: 'Engineering',
      cgpa: 3.60,
    ),
    Student(
      id: 105,
      name: 'Nick Miller',
      age: 20,
      programme: 'Engineering',
      cgpa: 2.95,
    ),
    Student(
      id: 106,
      name: 'Emily Chen',
      age: 19,
      programme: 'Data Science',
      cgpa: 3.92,
    ),
    Student(
      id: 107,
      name: 'David Kim',
      age: 24,
      programme: 'Economics',
      cgpa: 3.30,
    ),
    Student(
      id: 108,
      name: 'Jessica Taylor',
      age: 21,
      programme: 'Design',
      cgpa: 3.75,
    ),
    Student(
      id: 109,
      name: 'Carlos Gomez',
      age: 22,
      programme: 'Architecture',
      cgpa: 3.10,
    ),
    Student(
      id: 110,
      name: 'Fatima Al-Mansoor',
      age: 20,
      programme: 'Information Systems',
      cgpa: 3.88,
    ),
  ];

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
