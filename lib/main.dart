import 'package:flutter/material.dart';
import 'package:flutter_task/bottom_navigation.dart';
import 'package:flutter_task/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              surfaceTintColor: Colors.white, backgroundColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
