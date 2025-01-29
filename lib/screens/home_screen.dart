import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('< Flawless Code >', style: Theme.of(context).textTheme.headlineMedium),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  CupertinoIcons.person_circle,
                  size: 50,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              accountName: Text("Hoş Geldiniz"),
              accountEmail: null,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.device_laptop),
              title: Text('Eğitimler'),
              onTap: () => context.push("/lesson"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person),
              title: Text('Profil'),
              onTap: () => context.push("/profile"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text('Ayarlar'),
              onTap: () => context.push("/settings"),
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Çıkış Yap'),
              onTap: () => context.go("/login"),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Icon(
                        Icons.home,
                        size: 32,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        "Hoş Geldiniz Keyvan Arasteh 👋",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Icon(
                        Icons.code,
                        size: 32,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Kodlama alanında yeni başarılar elde etmeye hazır mısınız?",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: EdgeInsets.all(24),
                  children: [
                    SizedBox(height: 16),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          child: Icon(Icons.laptop,
                              size: 24,
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        title: Text("Eğitimler", style: Theme.of(context).textTheme.titleMedium),
                        subtitle: Text("Bütün eğitimleri görüntüleyin", style: Theme.of(context).textTheme.bodySmall),
                        onTap: () => context.push("/lesson"),
                      ),
                    ),
                    SizedBox(height: 16),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          child: Icon(Icons.settings,
                              size: 24,
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        title: Text("Ayarlar", style: Theme.of(context).textTheme.titleMedium),
                        subtitle: Text("Uygulama ayarlarını özelleştirin", style: Theme.of(context).textTheme.bodySmall),
                        onTap: () => context.push("/settings"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(24),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: DotLottieLoader.fromAsset(
                    "assets/motions/q2.lottie",
                    frameBuilder: (context, dotlottie) {
                      if (dotlottie != null) {
                        return Lottie.memory(dotlottie.animations.values.single);
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
