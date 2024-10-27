import 'package:eco_eats/screen/authentication/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../resource/app_colors/app_colors.dart';
import '../../widget/custom_password_text_field_widget.dart';
import '../../widget/custom_text_field_widget.dart';
import '../../widget/material_button_widget.dart';
import '../../widget/round_button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObscure = true;

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
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
            const Text('Sign Up',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Gap(12),

            SizedBox(
              width: width * 0.8,
              child: Text('To get more Advantages sign up your accounts by filling in some information',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const Gap(70),

            Container(
              height: height * 0.64,
              width: width,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadius.circular(35.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Gap(18),

                  const Text('Your Name',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  const Gap(4),

                  CustomTextFieldWidget(
                      emailController: nameController,
                      hintText: 'Rahim Sekh'
                  ),

                  const Gap(16),

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

                  const Gap(24),

                  MaterialButtonWidget(
                      width: width * 0.9,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInScreen()));
                    },
                    buttonText: 'Sign Up',
                  ),

                  const Gap(16),

                  Center(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Other sign up Options',
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.appBlack.withOpacity(0.4),
                              fontWeight: FontWeight.bold
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

