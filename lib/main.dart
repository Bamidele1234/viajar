import 'package:flutter/material.dart';
import 'package:viajar/screens/welcome_screen.dart';

main() => runApp(const Viajar());

class Viajar extends StatelessWidget {
  const Viajar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {WelcomeScreen.id: (context) => const WelcomeScreen()},
    );
  }
}
