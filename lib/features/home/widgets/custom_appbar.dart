import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:movie_app/core/styling/app_colors.dart';
import 'package:movie_app/core/styling/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Movix', style: AppStyles.font18whitesemibold),
            const Spacer(),
            Badge(
              child: Icon(
                Icons.notifications_outlined,
                color: AppColors.primaryColor,
              ),
            ),
            Gap(10.w),
            CircleAvatar(
              radius: 20.r,
              backgroundColor: AppColors.primaryColor,
              backgroundImage: const AssetImage('assets/images/image.jpg'),
            ),
          ],
        ),
        Gap(2.h),
        Text('What do you want to watch?', style: AppStyles.font12greymedium),
      ],
    );
  }
}
