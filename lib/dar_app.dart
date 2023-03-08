import 'package:dar/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';

class DarApp extends StatelessWidget {
  const DarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xfffbf9f2),
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Color(0xFF162f11)),
        ),
        // colorScheme: ColorScheme(
        // // used fo buttons
        //   primary: null,
        //   onPrimary: null,
        // // used for background
        //   background: null,
        //   onBackground: null,
        // // used for cards
        //   surface: null,
        //   onSurface: null,
        // // used for
        //   brightness: null,
        // // used for
        //   error: null,
        //   onError: null,
        // // used for
        //   secondary: null,
        //   onSecondary: null,
        // ),
      ),
      // darkTheme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Color(0xFFD9D9D9),
      //     shadowColor: Colors.transparent,
      //   ),
      // colorScheme: ColorScheme(
      // // used fo buttons
      //   primary: null,
      //   onPrimary: null,
      // // used for background
      //   background: null,
      //   onBackground: null,
      // // used for cards
      //   surface: null,
      //   onSurface: null,
      // // used for
      //   brightness: null,
      // // used for
      //   error: null,
      //   onError: null,
      // // used for
      //   secondary: null,
      //   onSecondary: null,
      // ),

      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// color: Theme.of((context).colorScheme.primary),
// color: Theme.of((context).colorScheme.Onprimary),

// statefull 
//var isDark =false;
//
//switch (
// value: false,
// onChanged: (newValue){
// setState(){
// 
// }
// }
//)

// extinsion ThemeHelpers on