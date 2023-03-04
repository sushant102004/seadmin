import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seadmin/views/home/home.dart';
import 'package:seadmin/views/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      getPages: [
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/home', page: () => const Home())
      ],
    );
  }
}
