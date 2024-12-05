import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/routes/app_router.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Timer(const Duration(seconds: 5), () {
      router.go("/home");
    });
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Logo bölümü
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 30),

                // Yükleme ikonu
                
                CircularProgressIndicator(),
                const SizedBox(height: 20),

                // Yükleniyor yazısı
                const Text(
                  'Yükleniyor...',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
