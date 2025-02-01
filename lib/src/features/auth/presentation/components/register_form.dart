import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/widgets/custom_btn.dart';
import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/common/widgets/have_an_account.dart';
import '../../../../../core/utils/app_strings.dart';
import '../view/otp_verification_sheet.dart';
import '../widgets/create_account_title.dart';
import '../widgets/first_and_last_name_row.dart';
import '../widgets/phone_and_date_row.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: [
            const CreateAccountTitle(),
            SizedBox(height: 20.h),
            FirstAndLastNameRow(
              firstNameController: TextEditingController(),
              lastNameController: TextEditingController(),
            ),
            SizedBox(height: 20.h),
            PhoneAndDateRow(
              phoneController: TextEditingController(),
              dateController: TextEditingController(),
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              hintText: AppStrings.emailHint,
              controller: TextEditingController(),
              isPassword: false,
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              hintText: AppStrings.enterPasswordHint,
              controller: TextEditingController(),
              isPassword: true,
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              hintText: AppStrings.hintConfirmPassword,
              controller: TextEditingController(),
              isPassword: true,
            ),
            SizedBox(height: 20.h),
            CustomButton(
                text: AppStrings.next,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => OtpVerificationSheet(
                      onSubmit: (otp) {
                        print('Submitted OTP: $otp');
                      },
                    ),
                  );
                }),
            SizedBox(height: 12.h),
            HaveAnAccountWidget(
              onTap: () {},
              title1: AppStrings.haveAnAccount,
              title2: AppStrings.signIn,
            )
          ],
        ),
      ),
    );
  }
}
