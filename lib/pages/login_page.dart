import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/logo.png'),
                Column(
                  children: [
                    const Text(
                      'Add your phone number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: const TextStyle(
                            color: Color(0xFFB3B3B3),
                          ),
                          prefixIcon: const Icon(Icons.phone_android_rounded),
                          prefixIconColor: const Color(0xFF79B854),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xFF79B854),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color(0xFF79B854),
                              width: 2,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()
                        ));
                      },
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF79B854),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
