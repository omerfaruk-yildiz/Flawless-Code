import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/screens/content_screen.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';

// Yeni sayfa: C Dersi İçeriği

class LessonScreen extends StatelessWidget {
  const LessonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
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
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: const EdgeInsets.all(20),
              children: [
                _buildLessonCard(context, CupertinoIcons.book, 'C', Colors.blue),
                _buildLessonCard(context, CupertinoIcons.book, 'C++', Colors.green),
                _buildLessonCard(context, CupertinoIcons.book, 'C#', Colors.red),
                _buildLessonCard(context, CupertinoIcons.book, 'SQL', Colors.purple),
                _buildLessonCard(context, CupertinoIcons.book, 'PYTHON', Colors.orange),
                _buildLessonCard(context, CupertinoIcons.book, 'JAVA', Colors.teal),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }

  Widget _buildLessonCard(BuildContext context, IconData icon, String title, Color color) {
    return InkWell(
      onTap: () {
        if (title == 'C') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContentScreen()),
          );
        } else {
          _showSnackBar(context, title);
        }
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[800],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String lessonName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$lessonName dersine tıkladınız!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

