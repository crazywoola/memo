import 'package:flutter/material.dart';
import './title_section.dart';
import './list_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _someColumnNav() {
    return Column(children: const [
      Text('Home'),
      Text('Grid System'),
      Text('Form'),
    ]);
  }

  Widget _someRowNav() {
    return Row(children: const [
      Text('Home'),
      Divider(
        color: Color.fromARGB(249, 25, 25, 220),
        indent: 10,
      ),
      Text('Grid System'),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSection(),
        const ListSection(),
        _someRowNav(),
        const Divider(
          color: Color.fromARGB(249, 25, 25, 220),
          height: 10,
        ),
        _someColumnNav(),
      ],
    );
  }
}
