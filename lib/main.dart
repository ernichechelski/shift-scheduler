import 'package:flutter/material.dart';
import 'screens/LoginScreen.dart';
import 'screens/ShiftsScreen.dart';
import 'screens/SettingsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shift Scheduler',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/shifts': (context) => ShiftsScreen(),
        '/settings': (context) => const SettingsScreen(),
      }
    );
  }
}
