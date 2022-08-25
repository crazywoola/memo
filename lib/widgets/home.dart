import 'package:flutter/material.dart';
import './home_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memo Index'),
      ),
      body: const HomePage(),
    );
  }
}
