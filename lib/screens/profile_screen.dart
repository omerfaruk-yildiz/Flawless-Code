import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(1),
        children: [
          Card(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/181980218.jpg'),
                  ),
                  const SizedBox(height: 1),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Ömer Faruk YILDIZ"),
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("omerfaruk_yildiz@outlook.com"),
                    subtitle: Text("E-posta"),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/150136006.jpg'),
                  ),
                  const SizedBox(height: 1),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Enes ÖZGENÇ"),
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("seneenes14@gmail.com"),
                    subtitle: Text("E-posta"),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/48393183.jpg'),
                  ),
                  const SizedBox(height: 1),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Batuhan Demir"),
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("batuhan-demir05@outlook.com"),
                    subtitle: Text("E-posta"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.logout),
            label: Text("Hesaptan Çıkış Yap"),
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          if (context.canPop())
            TextButton.icon(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back),
              label: Text("Geri Dön"),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
