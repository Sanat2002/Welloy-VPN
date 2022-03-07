import 'package:flutter/material.dart';
import 'package:wolly_vpn/pages/home.dart';
import 'package:wolly_vpn/pages/login.dart';
import 'package:wolly_vpn/pages/signup.dart';
import 'package:wolly_vpn/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
