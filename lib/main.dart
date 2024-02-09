import 'package:flutter/material.dart';
import 'package:promilo/application/bottom_nav_provider.dart';
import 'package:promilo/application/home_card_provider.dart';
import 'package:promilo/application/login_provider.dart';
import 'package:promilo/application/loginscreen_provider.dart';
import 'package:promilo/presentation/auth/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
///Uses the multiprovider to register all provider classes in the app
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ApiProvider(),
        ),
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Promilo',
        home: LoginScreen(),
      ),
    );
  }
}
