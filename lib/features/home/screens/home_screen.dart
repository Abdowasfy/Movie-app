import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:movie_app/core/styling/app_colors.dart';
import 'package:movie_app/features/home/widgets/custom_appbar.dart';
import 'package:movie_app/features/home/widgets/custom_search_bar.dart';
import 'package:movie_app/features/home/widgets/movies_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(25),
            CustomAppBar(),
            const Gap(24),
            CustomSearchBar(),
            const Gap(30),
            MoviesCarousel(),
          ],
        ),
      ),
    );
  }
}
