//registerView

import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:  Text.rich( 
          TextSpan(
          text: AppStrings.steps,
          style: AppStyles.s24.copyWith(
                color: AppColors.textColor
              ),
          children: [
            TextSpan(
              text: '1',
              style: AppStyles.s24.copyWith(
                color: AppColors.red
              ),
              ),
              TextSpan(
                text: ' |2',
               style: AppStyles.s24.copyWith(
                color: AppColors.textColor,),
              ),
          ],
              
                
        ),
        
        ),
      ),
    );
  }
}