import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:eco_eats/screen/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/splash.png', fit: BoxFit.cover,)),
          const Gap(190),
          const CircularProgressIndicator( color: Colors.white,),
          const Gap(12),
          const Text('Design & Developed by',
            style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
          const Text('Md Foysal Joarder',
            style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),

          const Gap(35),


        ],
      ),
    );
  }
}
