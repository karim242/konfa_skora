import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_image_view.dart';
import '../../../../../core/utils/app_strings.dart';
import '../components/login_form.dart';
import '../widgets/create_account_title.dart';

class LoginViewSheet extends StatelessWidget {
  const LoginViewSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 25),
                  child: CreateAccountTitle(
                    title: AppStrings.welcome,
                    subTitle: AppStrings.signIn,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 20, top: 32, right: 20),
                  child: LoginForm(),
                ),
              ],
            ),
            Positioned(
              left: -10,
              top: -10,
              child: AppImageView(
                AppAssets.sevenLines,
                width: 110.w,
                height: 110.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
