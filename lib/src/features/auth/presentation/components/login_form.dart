import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: AppStrings.phoneHint,
          controller: TextEditingController(),
          isPassword: false,
        ),
        SizedBox(height: 30.h),
        CustomTextFormField(
          hintText: AppStrings.hintPassword,
          controller: TextEditingController(),
          isPassword: true,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              AppStrings.forgetPassword,
              style: AppStyles.s10.copyWith(
                color: AppColors.grey,
              ),
            ),
          ),
        ),
        CustomButton(
          text: AppStrings.signIn,
          onPressed: () {},
        ),
        SizedBox(height: 22.h),
        RichText(
          text: TextSpan(
            text: AppStrings.dontHaveAnAccount,
            style: AppStyles.s14.copyWith(
              color: AppColors.grey,
            ),
            children: [
              TextSpan(
                text: AppStrings.creatAccount,
                style: AppStyles.s14.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 22.h),
      ],
    );
  }
}
