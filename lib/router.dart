import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import './widgets/home_screen.dart';
import './widgets/books_screen.dart';
import './widgets/book_detail_screen.dart';
import './data.dart';

final simpleLocationBuilder = RoutesLocationBuilder(routes: {
  '/': (context, state, data) => BeamPage(
        key: const ValueKey('home'),
        title: 'Home',
        child: HomeScreen(),
      ),
  '/books': (context, state, data) => BeamPage(
        key: const ValueKey('books'),
        title: 'Books',
        child: BooksScreen(),
      ),
  '/books/:bookId': (context, state, data) {
    final book = books.firstWhere((book) =>
        book['id'] ==
        (context.currentBeamLocation.state as BeamState)
            .pathParameters['bookId']);

    return BeamPage(
      key: ValueKey('book-${book['id']}'),
      title: book['title'],
      child: BookDetailScreen(book: book),
    );
  }
});
