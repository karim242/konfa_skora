import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/otp_header.dart';
import '../widgets/otp_input_fields.dart';
import '../widgets/otp_timer.dart';

class OtpVerificationSheet extends StatelessWidget {
  final Function(String) onSubmit;
  final VoidCallback? onClose;

  const OtpVerificationSheet({
    super.key,
    required this.onSubmit,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OtpHeader(),
          SizedBox(height: 23.h),
          OtpInputFields(onComplete: onSubmit),
          SizedBox(height: 10.h),
          const OtpTimer(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
