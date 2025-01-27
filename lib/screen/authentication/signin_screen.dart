import 'package:eco_eats/screen/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:eco_eats/widget/custom_password_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../resource/app_colors/app_colors.dart';
import '../../widget/custom_text_field_widget.dart';
import '../../widget/material_button_widget.dart';
import '../../widget/round_button_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObscure = true;

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(70),
            const Text('Sign In',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),

            const Gap(18),

            const Text('Enter Your email address and passowrd to \naccess your account or create an account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
                fontWeight: FontWeight.w500,
              ),
            ),

            const Gap(120),

            Container(
              width: width,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.appWhite,
                borderRadius: BorderRadius.circular(35.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Gap(18),

                  const Text('Email address',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.bold
                  ),
                  ),

                  const Gap(4),

                  CustomTextFieldWidget(
                      emailController: emailController,
                    hintText: 'karim000@gmail.com'
                  ),

                  const Gap(16),

                  const Text('Password',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  const Gap(4),

                  CustomPasswordTextFieldWidget(
                      passwordController: passwordController,
                      hintText: '***********',
                      isObsecure: true,
                  ),

                  const Gap(25),

                  MaterialButtonWidget(
                    width: width * 0.9,
                    onTap: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const BottomNavBar()), (route) => false,),
                    buttonText: 'Sign In',
                  ),

                  const Gap(30.0),

                  Center(
                    child: Text('Other sign in Options',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.appBlack.withOpacity(0.4),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  const Gap(16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundButtonWidget(
                          onTap: ()=>debugPrint(''),
                          imageIcon: 'assets/images/facebook.png'
                      ),

                      const Gap(15),

                      RoundButtonWidget(
                          onTap: ()=>debugPrint(''),
                          imageIcon: 'assets/images/google.png'
                      ),

                      const Gap(15),

                      RoundButtonWidget(
                        onTap: ()=>debugPrint(''),
                      imageIcon: 'assets/images/apple.png'
                      )
                    ],
                  ),

                  const Gap(20),



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



