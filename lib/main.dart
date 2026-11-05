import 'package:flutter/material.dart';
import 'package:space/core/app_them.dart';
import 'package:space/features/login%20page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: AppTheme.darkTheme,
      home: Login(),
    );
  }
}
