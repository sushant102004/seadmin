import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: Get.width / 15, right: Get.width / 15),
          child: Column(
            children: [
              SizedBox(height: Get.height / 10),
              const Text(
                'Study Ease Admin',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height / 10),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              SizedBox(height: Get.height / 20),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: Get.height / 20),
              ElevatedButton(onPressed: () {}, child: const Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
