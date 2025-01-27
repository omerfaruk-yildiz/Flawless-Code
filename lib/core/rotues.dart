
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/lesson_screen.dart';
import '../screens/profile_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(), // Ana ekran
    ),
    GoRoute(
      path: '/lesson',
      builder: (context, state) => const LessonScreen(), // Ders ekranı
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(), // Profil ekranı
    ),
  ],
);
