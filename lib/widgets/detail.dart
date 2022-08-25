import 'package:flutter/material.dart';

class DetailParams {
  final String title;
  final String message;

  DetailParams(this.title, this.message);
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  static const routeName = '/detail';

  Center _hero() {
    return Center(
      child: Hero(
        tag: 'imageHero',
        child: Image.network(
          'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)!.settings.arguments as DetailParams;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(children: [
          _hero(),
          Text(params.title),
        ]),
      ),
    );
  }
}
