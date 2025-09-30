import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/bottom_nav_bar/bottom_nav_bar.dart';
import 'screen/category/category_details_page.dart';
import 'screen/splash/splash_screen.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      // home: const SignInScreen(),
      // home: const SignUpScreen(),
      home: const BottomNavBar(),
      // home: const CategoryDetailsPage(),
    );
  }
}

