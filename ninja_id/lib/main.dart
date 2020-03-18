import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: myHome(),
));

class myHome extends StatefulWidget {
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID'),
        backgroundColor: Colors.grey[850],
        brightness: Brightness.dark,
        elevation: 0,
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                child: Image.asset('assets/pp.jpg'),
                radius: 40,
              ),
            ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.grey,
                ),
              ),
            SizedBox(height: 10),
            Text(
              'VRISHANK',
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.amberAccent[200],
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),


            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.amberAccent[200],
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                  'vrishank98@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        setState(() {
          ninjaLevel++;
        });
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
