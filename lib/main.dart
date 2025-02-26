import 'package:borg_erp/providers/key_provider.dart';
import 'package:borg_erp/providers/timer_provider.dart';
import 'package:borg_erp/screens/dashbroad_screen.dart';
import 'package:borg_erp/screens/history_screen.dart';
import 'package:borg_erp/screens/login_screen.dart';
import 'package:borg_erp/screens/profile_screen.dart';
import 'package:borg_erp/screens/splash_screen.dart';
import 'package:borg_erp/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/passwor_visibility_provider .dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(
          create: (context) => PasswordVisibilityProvider(), ),
              ChangeNotifierProvider(
          create: (context) => KeyProvider(), ),
          ChangeNotifierProvider(create: (context)=>TimerProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routes:{
          '/':(context)=>SplashScreen(),
          '/login':(context)=>LoginScreen(),
          '/dashbord':(context)=>CustomBottom(),
          '/history' :(context)=>HistoryScreen(),
          '/profile':(context)=>ProfileScreen()
        },
       initialRoute: '/',
      ),
    );
  }
}


