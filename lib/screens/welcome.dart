import 'package:flutter/material.dart';
import 'package:tradeu/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 10,
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: const Text(
                    'TradeU',
                    style: TextStyle(
                      fontFamily: 'designer',
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: const Text(
                    'Let\'s Get \nStarted',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'opensans',
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: const Text(
                    'Unlock the Student Marketplace Experience!',
                    style: TextStyle(
                      color: Colors.black38,
                      fontFamily: 'europa',
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.auth),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'opensans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
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
