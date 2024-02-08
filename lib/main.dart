import 'package:flutter/material.dart';
import 'package:promilo/application/bottom_nav_provider.dart';
import 'package:promilo/application/home_card_provider.dart';
import 'package:promilo/presentation/home/details_screen.dart';
import 'package:promilo/presentation/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavBarProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Promilo',
        home: DetailsScreen(),
      ),
    );
  }
}
