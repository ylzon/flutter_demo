import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter, // 位置
          fit: BoxFit.cover, // 填充方式
          // 颜色滤镜
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight)
        ),
      ),
      // color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 25, 128, 1.0)
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 25, 128, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'EvanBell',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          ),
        ],
      ),
    );
  }
}
class TextDemo extends StatelessWidget {
  final TextStyle _TextStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = 'EvanBell';
  final String _title = '前端工程师';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '$_author, $_title，text$_author, $_title，text$_author, $_title，texttext$_author, $_title，text$_author, $_title，text$_author, $_title，text$_author, $_title，text$_author, $_title，text',
      textAlign: TextAlign.left,
      style: _TextStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}