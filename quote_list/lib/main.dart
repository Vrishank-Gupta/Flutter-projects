import 'package:flutter/material.dart';
import 'package:quotelist/quote.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: quoteList(),
));


class quoteList extends StatefulWidget {
  @override
  _quoteListState createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {
  List<Quote> quotes = [Quote(text: "hello",author: "there"),Quote(text: "hello",author: "there"),Quote(text: "hello",author: "there")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          'Quote List'
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Column(
        children: quotes.map((quote) => Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600]
                ),
              ),
              Text(
                quote.author,
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ],
          )
        ).toList(),
      ),
    );
  }
}

