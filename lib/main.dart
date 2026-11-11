import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/main_navigation.dart';
import 'widgets/navigation_provider.dart';

void main() {
  runApp(const StudentHubApp());
}

class StudentHubApp extends StatelessWidget {
  const StudentHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StudentHub',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: const MainNavigation(),
      ),
    );
  }
}
