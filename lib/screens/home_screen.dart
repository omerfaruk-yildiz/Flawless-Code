import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

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
      backgroundColor: const Color(0xFF1C1C1C),
      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: const Text(
          '< Flawless Code >',
          style: TextStyle(
            fontSize: 24, // Yazı boyutu
            fontWeight: FontWeight.bold, // Kalınlaştırma
            color: Colors.white, // Yazı rengi
          ),
        ),
      ),

      // Ana içerik
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Kenarlardan boşluk
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hoş Geldin Kutusu
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[800], // Kutunun arka plan rengi
                borderRadius: BorderRadius.circular(12.0), // Kenar ovalleştirme
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hoş Geldin ÖmerFarukYıldız 👋',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Kodlama alanında yeni başarılar elde etmeye hazır mısınız?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            // Kayan Bloglar
            const Text(
              'Bilgi Akışı',
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              height: 150, // Kartların yüksekliği
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Yatay kaydırma
                itemCount: blogList.length, // Blog sayısı
                physics: const BouncingScrollPhysics(), // Hareketi sağlıyor
                itemBuilder: (context, index) {
                  final blog = blogList[index]; // Dinamik içerik
                  return Container(
                    width: 200, // Kartların genişliği
                    margin: const EdgeInsets.only(right: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            blog["title"] ?? "Başlık Yok",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            blog["description"] ?? "Açıklama Yok",
                            style: const TextStyle(color: Colors.white70, fontSize: 14),
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
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  '',
                  style: TextStyle(color: Colors.white),
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
