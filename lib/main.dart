import 'package:flutter/material.dart';
import 'package:nong_gmail/core/theme/app_theme.dart';
import 'package:nong_gmail/presentation/views/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: MyTheme.lightTheme,
        home: const SplashPage());
  }
}
