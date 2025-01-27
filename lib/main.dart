import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/rotues.dart'; // Yönlendirme rotaları
import 'core/themes.dart'; // Tema yönetimi

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp.router(
          title: 'Flutter App',
          themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light, // Tema modu
          theme: lightTheme, // Açık tema
          darkTheme: darkTheme, // Koyu tema
          routerConfig: router, // GoRouter yapılandırması
          debugShowCheckedModeBanner: false, // Debug bandını kaldır
        );
      },
    );
  }
}
