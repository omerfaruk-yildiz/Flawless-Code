import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: const Text(
          'Profil Ekranı',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1C1C1C),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profil Resmi
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profil.png'),
              ),
              const SizedBox(height: 16),

              // Kullanıcı Adı
              const Text(
                'Kullanıcı Adı: ÖmerFarukYıldız',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),

              // Kullanıcı E-postası
              const Text(
                'E-posta: omerfaruk_yildiz@outlook.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 16),

              // Kullanıcı Hakkında
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hakkında',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Merhaba! Biz, İstinye Üniversitesi Bilgisayar Programcılığı öğrencileriyiz. Teknolojiye olan tutkumuzla yenilikçi projeler geliştirmek ve yazılım dünyasında kendimizi geliştirmek için çalışıyoruz. Ekip olarak birlikte öğreniyor, üretiyor ve problem çözme becerilerimizi geliştiriyoruz. Bu süreçte bizlere rehberlik eden ve ilham kaynağı olan değerli hocamız Keyvan Beye teşekkürlerimizi sunuyoruz.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 16),

              // Haftalık Yoklama
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Haftalık Yoklama',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7, // Haftanın günleri
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  final List<String> days = ['Pzt', 'Sal', 'Çar', 'Per', 'Cum', 'Cmt', 'Paz'];
                  bool isChecked = false;

                  return GestureDetector(
                    onTap: () {
                      isChecked = !isChecked;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isChecked ? Colors.green : Colors.grey[800],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          days[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),

              // Temaları Özelleştirme
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Temalar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    onPressed: () {
                      // Koyu tema ayarı
                    },
                    child: const Text(
                      'Koyu Tema',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    onPressed: () {
                      // Açık tema ayarı
                    },
                    child: const Text(
                      'Açık Tema',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Dil Değiştirme
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Dil Değiştir',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              DropdownButton<String>(
                dropdownColor: Colors.grey[800],
                value: 'Türkçe',
                items: const [
                  DropdownMenuItem(
                    value: 'Türkçe',
                    child: Text('Türkçe', style: TextStyle(color: Colors.white)),
                  ),
                  DropdownMenuItem(
                    value: 'English',
                    child: Text('English', style: TextStyle(color: Colors.white)),
                  ),
                ],
                onChanged: (value) {
                  // Dil değiştir
                },
              ),
              const SizedBox(height: 16),

              // Hata Bildir Butonu
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {
                  // Hata bildir fonksiyonu
                },
                child: const Text(
                  'Hata Bildir',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),

              // Ayarlar Butonu
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () {
                  // Ayarlar fonksiyonu
                },
                child: const Text(
                  'Ayarlar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),

              // Sürüm Bilgisi
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sürüm Bilgisi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Versiyon: 1.0.0',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
