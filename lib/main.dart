import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/component/utils/routes.dart';
import 'package:task_app/app/core/pages/home_screen/presentation/screen/home_page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task App",
      initialRoute: RouteHelper.signUpPage,
      routes: RouteHelper.getRoute(),
    );
  }
}
