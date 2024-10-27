import 'package:flutter/material.dart';
import '../resource/app_colors/app_colors.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({
    super.key,
    required this.onTap,
    required this.imageIcon,
  });

  final VoidCallback onTap;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppColors.appBlack.withOpacity(0.2))
        ),
        child: Image.asset(imageIcon),
      ),
    );
  }
}