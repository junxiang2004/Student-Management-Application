import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:std_management_system/main.dart';

void main() {
  testWidgets('StudentHub home page displays correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const StudentHubApp());

    expect(find.text('Welcome to StudentHub!'), findsOneWidget);

    expect(find.text('Total Students'), findsOneWidget);

    expect(find.byType(NavigationBar), findsOneWidget);
  });

  testWidgets('Bottom navigation switches to Students', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const StudentHubApp());

    await tester.tap(find.text('Students'));
    await tester.pumpAndSettle();

    expect(find.text('Student Information Page - Member 2'), findsOneWidget);
  });
}
