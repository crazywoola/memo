import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import './detail.dart';

class ListSection extends StatefulWidget {
  const ListSection({Key? key}) : super(key: key);
  @override
  State<ListSection> createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection> {
  final _suggestions = List.generate(10, (index) => WordPair.random().asString);

  Widget _buildList() {
    return ListView.builder(
      itemCount: _suggestions
          .length, // If this is not been set, this will cause out of range error
      itemBuilder: (context, i) {
        return ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                Detail.routeName,
                arguments: DetailParams(
                  _suggestions[i],
                  'extracted in the build method. ${_suggestions[i]}',
                ),
              );
            },
            child: Text('${_suggestions[i]}🚀'));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: _buildList(),
    );
  }
}
