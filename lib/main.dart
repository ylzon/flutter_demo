import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class Home extends StatelessWidget{
  Widget _listItemBuilder(BuildContext  context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(Posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            Posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            Posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('FLUTTER'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: Posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );;
  }
}