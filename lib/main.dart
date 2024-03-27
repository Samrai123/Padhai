import 'package:eduhub/auth/welcome_page.dart';
import 'package:eduhub/auth/login_main.dart';
import 'package:eduhub/home/navigationbar.dart/customtabbar.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unbound',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 153, 153, 155)),
        useMaterial3: true,
      ),
      // home: Welcome(),
      home: CustomTabBar(),
    );
  }
}
