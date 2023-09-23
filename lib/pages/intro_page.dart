import 'package:flutter/material.dart';
import 'package:puma_store_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 166, 132),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/puma_logo.png',
                color: Colors.white,
                height: 320,
              ),
            ),
            const SizedBox(height: 15),

            //title
            Text(
              'forever fast is always first, never second, never third...',
              style: TextStyle(
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 48),

            //start now button
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
