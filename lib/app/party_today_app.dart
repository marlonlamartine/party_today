import 'package:flutter/material.dart';
import 'package:party_today/app/screens/home_screen.dart';
import 'package:party_today/app/screens/login_screen.dart';
import 'package:party_today/app/screens/register_screen.dart';

import 'screens/splash_screen.dart';

class PartyTodayApp extends StatefulWidget {
  const PartyTodayApp({super.key});

  @override
  State<PartyTodayApp> createState() => _PartyTodayAppState();
}

class _PartyTodayAppState extends State<PartyTodayApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Limoeiro Hoje',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashScreen(),
        '/home': (_) => const HomeScreen(),
        '/login': (_) => const LoginScreen(),
        '/register': (_) => const RegisterScreen(),
      },
    );
  }
}
