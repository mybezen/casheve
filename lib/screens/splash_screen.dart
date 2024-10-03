// ignore_for_file: use_build_context_synchronously

import 'package:casheve/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const HomeScreen()
              ), 
              (route) => false),
        });
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(220, 217, 217, 217)),
      child: Center(child: Image.asset('assets/images/casheve.png')),
    );
  }
}
