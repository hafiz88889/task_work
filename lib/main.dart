import 'package:flutter/material.dart';
import 'package:task_app/app/core/pages/home_screen/presentation/screen/home_page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task App",
      home: HomePage(),
    );
  }
}
