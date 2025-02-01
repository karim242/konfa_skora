
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_image_view.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -10,
          top: -10,
          child: AppImageView(
            AppAssets.sevenLines,
            width: 110.w,
            height: 110.h,
          ),
        ),
        Column(
          children: [
            SizedBox(height: 50.h),
            AppImageView(
              AppAssets.otpIcon,
              width: 80.w,
              height: 80.h,
            ),
            SizedBox(height: 36.h),
            Text(
              AppStrings.otpVerification,
              style: AppStyles.s24.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppStrings.otpVerificationSubTitle,
              textAlign: TextAlign.center,
              style: AppStyles.s16.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}