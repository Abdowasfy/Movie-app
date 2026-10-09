import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/routing/router_generation.dart';
import 'package:movie_app/core/styling/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Movie App',
          theme: AppTheme.lightTheme,
          routerConfig: RouterGeneration.goRouter,
        );
      },
    );
  }
}
