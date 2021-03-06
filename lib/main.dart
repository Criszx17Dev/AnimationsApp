import 'package:flutter/material.dart';

import 'src/ui/themes/themes.dart';
import 'src/ui/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated',
      home: const LoginScreen(),
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(),
      darkTheme: MyThemes.darkTheme(),
    );
  }
}
