import 'package:flutter/material.dart';
import './title_section.dart';
import './list_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(),
        const ListSection(),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: const Text('Launch screen'),
        ),
      ],
    );
  }
}
