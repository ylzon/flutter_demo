import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
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
    return ListView.builder(
      itemCount: Posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}