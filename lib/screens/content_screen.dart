import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          '< Flawless Code >',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            _buildContentBox(
              context,
              'C Nedir?',
              'C, 1972 yılında Dennis Ritchie tarafından AT&T Bell Laboratuvarlarında geliştirilmiş genel amaçlı bir programlama dilidir. Sisteme yakın bir dil olması nedeniyle işletim sistemleri, gömülü sistemler, derleyiciler ve performans odaklı uygulamalar için kullanılır. C, birçok modern programlama dilinin (C++, C#, Java, Python) temelini oluşturur.',
            ),
            _buildContentBox(
              context,
              'C Programlama Dilinin Özellikleri',
              'Hızlı ve Etkili: Derlenmiş bir dil olduğu için programların çalışma süresi oldukça hızlıdır.',
            ),
            _buildContentBox(
              context,
              '',
              'Taşınabilirlik: C dili, farklı donanımlar ve işletim sistemlerinde çalışabilir.',
            ),
            _buildContentBox(
              context,
              '',
              'Yapısal Programlama: C, mantıksal olarak bölümlere ayrılmış bir kodlama yapısını destekler.',
            ),
            _buildContentBox(
              context,
              '',
              'Sisteme Yakın: Donanım seviyesinde işlem yapabilir (örneğin bellek yönetimi).',
            ),
            _buildContentBox(
              context,
              '',
              'Küçük ve Basit: Dili öğrenmek kolaydır ve az sayıda anahtar kelimeye sahiptir.',
            ),
            _buildContentBox(
              context,
              'C Programlama Dili Nerelerde Kullanılır?',
              'İşletim Sistemleri: Linux ve Unix gibi sistemler C diliyle yazılmıştır.',
            ),
            _buildContentBox(
              context,
              '',
              'Gömülü Sistemler: Mikrodenetleyiciler ve donanıma yakın yazılımlar için kullanılır.',
            ),
            _buildContentBox(
              context,
              '',
              'Oyun Programlama: Performans odaklı oyun motorlarının geliştirilmesinde temel oluşturur.',
            ),
            _buildContentBox(
              context,
              '',
              'Bilimsel ve Matematiksel Hesaplamalar: Hız gerektiren uygulamalarda kullanılır.',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildContentBox(BuildContext context, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}
