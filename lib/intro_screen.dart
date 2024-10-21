// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_akhir/home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'images/logo.jpeg',
                  color: Colors.grey[300],
                  colorBlendMode: BlendMode.modulate,
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                'MIRZA GUNSHOP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Di Mirza Gunshop, kami berkomitmen untuk menyediakan produk senjata api berkualitas tinggi, layanan pelanggan terbaik, dan saran ahli untuk para penggemar senjata. Baik Anda seorang pemburu berpengalaman, pecinta olahraga menembak, atau pembeli pertama kali, kami menawarkan beragam senjata api, amunisi, dan aksesori yang sesuai dengan kebutuhan Anda.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: const Text(
                      'SHOP NOW !',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
