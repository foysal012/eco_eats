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
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(height * 0.1),
                const Text('Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Gap(height * 0.02),

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

                Gap(height * 0.1),

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

                      Gap(height * 0.02),

                      const Text('Your Name',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Gap(height * 0.005),

                      CustomTextFieldWidget(
                          emailController: nameController,
                          hintText: 'Rahim Sekh'
                      ),

                      Gap(height * 0.02),

                      const Text('Email address',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Gap(height * 0.005),

                      CustomTextFieldWidget(
                          emailController: emailController,
                          hintText: 'karim000@gmail.com'
                      ),

                      Gap(height*0.02),

                      const Text('Password',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      Gap(height * 0.005),

                      CustomPasswordTextFieldWidget(
                        passwordController: passwordController,
                        hintText: '***********',
                        isObsecure: true,
                      ),

                      Gap(height*0.03),

                      MaterialButtonWidget(
                          width: width * 0.9,
                        onTap: (){},
                        buttonText: 'Sign Up',
                      ),

                      Gap(height*0.02),

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

                            Gap(height*0.02),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButtonWidget(
                                    onTap: ()=>debugPrint(''),
                                    imageIcon: 'assets/images/facebook.png'
                                ),

                                Gap(height*0.015),

                                RoundButtonWidget(
                                    onTap: ()=>debugPrint(''),
                                    imageIcon: 'assets/images/google.png'
                                ),

                                Gap(height*0.015),

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
        ),
      ),
    );
  }
}

