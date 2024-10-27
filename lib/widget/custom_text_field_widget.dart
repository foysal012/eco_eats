import 'package:flutter/material.dart';

import '../resource/app_colors/app_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.emailController,
    required this.hintText,
  });

  final TextEditingController emailController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: AppColors.appBlack.withOpacity(0.3),
              width: 2
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: AppColors.appBlack,
              width: 2
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}