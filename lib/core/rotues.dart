// uygulamada sayfalari ve navigasyon islemlerini burada tanimlicaz
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoadingScreen(),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const ProfileScreen(),
      ),
    ),
   
    GoRoute(
      path: '/search',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SearchScreen(),
      ),
    ),
    
  ],
);