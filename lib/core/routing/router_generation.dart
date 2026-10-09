import 'package:go_router/go_router.dart';
import 'package:movie_app/core/routing/app_routes.dart';
import 'package:movie_app/features/home/screens/home_screen.dart';
import 'package:movie_app/features/root/screens/root_screen.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.mainscreen,
    routes: [
      GoRoute(
        path: AppRoutes.mainscreen,
        name: AppRoutes.mainscreen,
        builder: (context, state) => const RootScreen(),
      ),
      GoRoute(
        path: AppRoutes.homescreen,
        name: AppRoutes.homescreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
