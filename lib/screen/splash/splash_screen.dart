import 'package:eco_eats/resource/app_colors/app_colors.dart';
import 'package:eco_eats/screen/authentication/signin_screen.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInScreen(),));
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
          Gap(MediaQuery.sizeOf(context).height * 0.2),
          const CircularProgressIndicator( color: Colors.white,),
          Gap(MediaQuery.sizeOf(context).height * 0.02),
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

          Gap(MediaQuery.sizeOf(context).height * 0.05),


        ],
      ),
    );
  }
}
