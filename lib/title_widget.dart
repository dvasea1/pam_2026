import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build sa apelat pentru Title Widget');
    return Text(title, style: TextStyle(fontSize: 24, color: Colors.red));
  }
}
