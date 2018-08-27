import 'package:flutter/material.dart';
// import './demo/hellow_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 是否显示DEBUG标签
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // 主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 高亮背景颜色
        splashColor: Colors.white70,  // 水波纹颜色
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // 标题
          title: Text('FLUTTER'),

//          // 左侧按钮
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigration',
//            onPressed: () => debugPrint('Navigration button is pressed.'),
//          ),

          // 右侧按钮组
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],

          // 默认高度
          elevation: 0.0,

          // 底部设置
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未激活图标的颜色
            indicatorColor: Colors.black54,       // 激活的颜色
            indicatorSize: TabBarIndicatorSize.label,   // 激活的下划线的大小
            indicatorWeight: 1.0,                 // 激活的宽度
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12,),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12,),
          ],
        ),
        drawer: DrawerDemo(), // 抽屉菜单
        bottomNavigationBar: BottomNavigationBarDemo() // 底部导航栏
        // endDrawer: Text('This is endDrawer'), // 右侧出现抽屉
      )
    );
  }
}



