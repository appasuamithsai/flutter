import 'package:flutter/material.dart';
import './quote_card.dart';
import './quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> lists = [
    Quote(
        text:
        "You’re braver than you believe, and stronger than you seem, and smarter than you think.",
        author: 'amith'),
    Quote(
        text: "It always seems impossible until it is done.", author: 'ajith'),
    Quote(
        text: "Keep your face to the sunshine and you cannot see a shadow.",
        author: 'ashwith')
  ];

  // Widget quoteTemplate(Quote quote) {
  //   return QuoteCard(quote : quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Mindfull Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children:
        lists.map((item) =>
            QuoteCard(
                quote: item,
                delete: () {
                  setState(
                          () {
                        lists.remove(item);
                      }
                  );
                }
            )).toList(),
      ),
    );
  }
}
