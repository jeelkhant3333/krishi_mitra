

import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  Scaffold(
      backgroundColor: Colors.white,
      body: LoginPage(),
    ),
  ));
}
