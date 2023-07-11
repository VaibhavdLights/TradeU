import 'package:flutter/material.dart';
import 'package:tradeu/routes.dart';
import 'package:tradeu/screens/auth.dart';
import 'package:tradeu/screens/otp.dart';
import 'package:tradeu/screens/welcome.dart';

void main() {
  runApp(const TradeU());
}

class TradeU extends StatelessWidget {
  const TradeU({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TradeU',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF191825)),
      ),
      home: const WelcomeScreen(),
      routes: {
        Routes.auth: (context) => const AuthScreen(),
        Routes.otp: (context) => const OtpScreen(),
      },
    );
  }
}
