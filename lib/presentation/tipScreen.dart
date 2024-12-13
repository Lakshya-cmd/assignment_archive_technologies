import 'package:flutter/material.dart';

class Tipscreen extends StatefulWidget {
  const Tipscreen({super.key});

  @override
  State<Tipscreen> createState() => _TipscreenState();
}

class _TipscreenState extends State<Tipscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "TIP Screen",
        style: TextStyle(fontSize: 28),
      )),
    );
  }
}