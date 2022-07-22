import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const id = 'WelcomeScreen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int index = 0;

  final widgets = [
    const DecorationImage(
      image: AssetImage('images/Opera2.jpg'),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage('images/Tower.jpg'),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage('images/Dubai.jpg'),
      fit: BoxFit.cover,
    ),
  ];

  final images = [
    Image.asset('images/Tower.jpg', fit: BoxFit.cover, key: const Key('1')),
    Image.asset('images/Opera2.jpg', fit: BoxFit.cover, key: const Key('2')),
    Image.asset('images/Dubai.jpg', fit: BoxFit.cover, key: const Key('3')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final isLastIndex = index == images.length - 1;
          setState(() {
            index = isLastIndex ? 0 : index + 1;
          });
        },
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 1200),
        child: images[index],
      ),
    );
  }
}
