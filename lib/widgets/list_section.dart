import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListSection extends StatefulWidget {
  const ListSection({Key? key}) : super(key: key);
  @override
  State<ListSection> createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection> {
  final _suggestions = List.generate(50, (index) => WordPair.random().asString);

  Widget _buildList() {
    return ListView.builder(
      itemCount: _suggestions
          .length, // If this is not been set, this will cause out of range error
      itemBuilder: (context, i) {
        return ElevatedButton(
            onPressed: () {
              print(i);
            },
            child: Text('${_suggestions[i]}🚀'));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: _buildList(),
    );
  }
}
