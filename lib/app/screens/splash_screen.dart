import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:party_today/app/components/ui/button.dart';
import 'package:party_today/app/components/styles/button_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF794F), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, right: 40, left: 40),
            child: Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_98vgucqb.json'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * .15),
              child: Button(
                style: context.buttonStyles.orangeButton,
                label: 'Acessar',
                width: MediaQuery.of(context).size.width * .9,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
