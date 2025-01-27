import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:provider/provider.dart'; // Tema yönetimi için gerekli

import '../core/themes.dart'; // Tema sağlayıcısı

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Blog içerikleri listesi
    final List<Map<String, String>> blogList = [
      {
        "title": "Charles Babbage",
        "description": "Charles Babbage, mekanik bilgisayarın babasıdır.",
      },
      {
        "title": "Ada Lovelace",
        "description": "Ada Lovelace, ilk bilgisayar programcısı olarak bilinir.",
      },
      {
        "title": "Alan Turing",
        "description": "Alan Turing, modern bilgisayar biliminin öncüsüdür.",
      },
      {
        "title": "Grace Hopper",
        "description": "Grace Hopper, ilk derleyiciyi geliştiren kişidir.",
      },
      {
        "title": "Linus Torvalds",
        "description": "Linus Torvalds, açık kaynaklı Linux çekirdeğini geliştirdi.",
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // AppBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          '< Flawless Code >',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon_stars, color: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),

      // Ana içerik
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hoş Geldin Kutusu
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hoş Geldin ÖmerFarukYıldız 👋',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Kodlama alanında yeni başarılar elde etmeye hazır mısınız?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            // Kayan Bloglar
            Text(
              'Bilgi Akışı',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: blogList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final blog = blogList[index];
                  return Container(
                    width: 200,
                    margin: const EdgeInsets.only(right: 16.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            blog["title"] ?? "Başlık Yok",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            blog["description"] ?? "Açıklama Yok",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),

            // Diğer içerik
            Expanded(
              child: Center(
                child: Text(
                  'Flawless Code ile geleceği yazın!',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Alt Menü
      bottomNavigationBar: BottomMenu(),
    );
  }
}
