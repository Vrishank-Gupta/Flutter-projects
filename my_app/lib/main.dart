import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
    home: Home(),
));


class Home_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),



      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
                padding: EdgeInsets.all(30.0),
                child: Text('one'),
                color: Colors.cyan[200],
              ),
          ),
          
          Expanded(
            flex: 2,
            child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red[100],
                child: Text('two'),
              ),
          ),
        ],
      ),
      
      
      floatingActionButton: FloatingActionButton(
        child: Text("FAB"),
        onPressed: () {},
        backgroundColor: Colors.red[500],
      ),
    );
  }
}