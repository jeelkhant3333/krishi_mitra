

import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Krishi Mitra'),
      //   backgroundColor: Color( 0xFF79B854),
      // ),
      body: LoginPage(),
    ),
  ));
}
