import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';

class OtpTimer extends StatelessWidget {
  const OtpTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '00:55',
      style: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 16,
      ),
    );
  }
}
