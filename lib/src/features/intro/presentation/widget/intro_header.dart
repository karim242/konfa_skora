import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konaf_skora/core/theme/app_colors.dart';
import 'package:konaf_skora/core/utils/app_assets.dart';
import 'package:konaf_skora/core/utils/app_image_view.dart';
import 'package:konaf_skora/src/features/intro/presentation/widget/wave_container.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: Stack(
        children: [
          WaveContainer(
            waveColor: AppColors.primaryColor.withOpacity(0.5),
            height: 360.h,
          ),
          Positioned(
            top: 120.h,
            right: 10.w,
            child: const AppImageView(AppAssets.cake),
          ),
          Positioned(
            top: 70.h,
            left: 20.w,
            child: const AppImageView(
              AppAssets.konafatSokara,
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}
