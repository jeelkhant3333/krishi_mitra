import 'package:flutter/material.dart';
import '../pages/home_page.dart';




class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  HomePage homePage = HomePage();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 30),
              homePage.productIcons(),
              const SizedBox(height: 30),
              homePage.productCardRow(),
            ],
          )
        ),
      ),
    );
  }
}
