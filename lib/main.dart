import 'package:flutter/material.dart';
import 'package:shopping_app_ui/theme/theme.dart';
import 'package:shopping_app_ui/ui/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shopping App UI',
      debugShowCheckedModeBanner: false,
      theme: ShopTheme.theme,
      home: const MainScreen(),
    );
  }
}
