import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:std_management_system/main.dart';

void main() {
  // Test 1: Check Home Page
  testWidgets('StudentHub home page displays correctly', (
      WidgetTester tester,
      ) async {
    await tester.pumpWidget(const StudentHubApp());
    await tester.pumpAndSettle();

    expect(
      find.text('Welcome to StudentHub!'),
      findsOneWidget,
    );

    expect(
      find.text('Total Students'),
      findsOneWidget,
    );

    expect(
      find.text('Total Programmes'),
      findsOneWidget,
    );

    expect(
      find.byType(NavigationBar),
      findsOneWidget,
    );
  });

  // Test 2: Check Bottom Navigation
  testWidgets('Bottom navigation switches to Students', (
      WidgetTester tester,
      ) async {
    await tester.pumpWidget(const StudentHubApp());
    await tester.pumpAndSettle();

    // Find Students button inside NavigationBar
    final studentsButton = find.descendant(
      of: find.byType(NavigationBar),
      matching: find.text('Students'),
    );

    // Tap Students button
    await tester.tap(studentsButton);
    await tester.pumpAndSettle();

    // Check selected navigation index
    final navigationBar = tester.widget<NavigationBar>(
      find.byType(NavigationBar),
    );

    expect(navigationBar.selectedIndex, 1);
  });

  // Test 3: Check Records Navigation
  testWidgets('Bottom navigation switches to Records', (
      WidgetTester tester,
      ) async {
    await tester.pumpWidget(const StudentHubApp());
    await tester.pumpAndSettle();

    final recordsButton = find.descendant(
      of: find.byType(NavigationBar),
      matching: find.text('Records'),
    );

    await tester.tap(recordsButton);
    await tester.pumpAndSettle();

    final navigationBar = tester.widget<NavigationBar>(
      find.byType(NavigationBar),
    );

    expect(navigationBar.selectedIndex, 2);
  });

  // Test 4: Check Programmes Navigation
  testWidgets('Bottom navigation switches to Programmes', (
      WidgetTester tester,
      ) async {
    await tester.pumpWidget(const StudentHubApp());
    await tester.pumpAndSettle();

    final programmesButton = find.descendant(
      of: find.byType(NavigationBar),
      matching: find.text('Programmes'),
    );

    await tester.tap(programmesButton);
    await tester.pumpAndSettle();

    final navigationBar = tester.widget<NavigationBar>(
      find.byType(NavigationBar),
    );

    expect(navigationBar.selectedIndex, 3);
  });
}
