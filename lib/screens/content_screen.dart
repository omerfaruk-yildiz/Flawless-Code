import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C), // Arka plan rengi
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: const Text(
          '< Flawless Code >',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16), // Üst boşluk

            // C Nedir? başlıklı kutu
            _buildContentBox(
              'C Nedir?',
              'C, 1972 yılında Dennis Ritchie tarafından AT&T Bell Laboratuvarlarında geliştirilmiş genel amaçlı bir programlama dilidir.Sisteme yakın bir dil olması nedeniyle işletim sistemleri, gömülü sistemler, derleyiciler ve performans odaklı uygulamalar için kullanılır.C, birçok modern programlama dilinin (C++, C#, Java, Python) temelini oluşturur.',
            ),

            // Diğer başlıklı kutular
            _buildContentBox(
              'C Programlama Dilinin Özellikleri',
              'Hızlı ve Etkili: Derlenmiş bir dil olduğu için programların çalışma süresi oldukça hızlıdır.',
            ),
            _buildContentBox(
              '',
              'Taşınabilirlik: C dili, farklı donanımlar ve işletim sistemlerinde çalışabilir.',
            ),
            _buildContentBox(
              '',
              'Yapısal Programlama: C, mantıksal olarak bölümlere ayrılmış bir kodlama yapısını destekler.',
            ),
            _buildContentBox(
              '',
              'Sisteme Yakın: Donanım seviyesinde işlem yapabilir (örneğin bellek yönetimi).',
            ),
            _buildContentBox(
              '',
              'Küçük ve Basit: Dili öğrenmek kolaydır ve az sayıda anahtar kelimeye sahiptir.',
            ),
            _buildContentBox(
              'C Programlama Dili Nerelerde Kullanılır?',
              'İşletim Sistemleri: Linux ve Unix gibi sistemler C diliyle yazılmıştır',
            ),
            _buildContentBox(
              '',
              'Gömülü Sistemler: Mikrodenetleyiciler ve donanıma yakın yazılımlar için kullanılır.',
            ),
            _buildContentBox(
              '',
              'Küçük ve Basit: Dili öğrenmek kolaydır ve az sayıda anahtar kelimeye sahiptir.',
            ),
            _buildContentBox(
              '',
              'Oyun Programlama: Performans odaklı oyun motorlarının geliştirilmesinde temel oluşturur.',
            ),
             _buildContentBox(
              '',
              'Bilimsel ve Matematiksel Hesaplamalar: Hız gerektiren uygulamalarda kullanılır.',
            ),
            const SizedBox(height: 16), // Alt boşluk
          ],
        ),
      ),
    );
  }

  // İçerik kutusunu oluşturan metod
  Widget _buildContentBox(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[800], // Kutunun arka plan rengi
        borderRadius: BorderRadius.circular(12.0), // Kenar ovalleştirme
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty) // Eğer başlık boş değilse göster
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
