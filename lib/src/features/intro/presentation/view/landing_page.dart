import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:konaf_skora/core/common/widgets/custom_btn.dart';
import 'package:konaf_skora/core/common/widgets/have_an_account.dart';
import 'package:konaf_skora/core/theme/app_colors.dart';
import 'package:konaf_skora/core/utils/app_styles.dart';
import 'package:konaf_skora/src/features/intro/presentation/widget/intro_header.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const IntroHeader(),
          CustomButton(
            text: "انشاء حساب / تسجيل الدخول",
            textStyle: AppStyles.s16,
            onPressed: () {},
            backgroundColor: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(12),
            width: 358.w,
            height: 57.h,
          ),
          CustomButton(
            text: "تصفح",
            textStyle: AppStyles.s20.copyWith(color: AppColors.white),
            onPressed: () {},
            backgroundColor: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
            width: 358.w,
            height: 57.h,
          ),
          HaveAnAccountWidget(
            onTap: () {},
            title1: "بالمتابعه اؤكد انني  موافق علي ",
            title2: "الشروط والاحكام",
          ),
        ],
      ),
    );
  }
}
