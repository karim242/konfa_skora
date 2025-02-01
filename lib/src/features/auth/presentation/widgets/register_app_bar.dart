
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class RegisterAppBar extends StatelessWidget {
  const RegisterAppBar({
    super.key, required this.primaryText, required this.secondaryText,
  });
final String primaryText;
final String secondaryText;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: AppStrings.steps,
        style: AppStyles.s24.copyWith(color: AppColors.textColor),
        children: [
          TextSpan(
            text: primaryText,
            style: AppStyles.s24.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: secondaryText,
            style: AppStyles.s24.copyWith(
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
