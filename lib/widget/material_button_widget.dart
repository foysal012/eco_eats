import 'package:flutter/material.dart';
import '../resource/app_colors/app_colors.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({
    super.key,
    required this.width,
    required this.onTap,
    required this.buttonText,
  });

  final double width;
  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      minWidth: width,
      height: 52,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      onPressed: onTap,
      child: Text(buttonText,
        style: const TextStyle(
            fontSize: 16,
            color: AppColors.appWhite,
            fontWeight: FontWeight.bold
        ),),
    );
  }
}