

import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  const Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Krishi Mitra'),
      //   backgroundColor: Color( 0xFF79B854),
      // ),
      body: LoginPage(),
    ),
  ));
}
