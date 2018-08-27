import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
    return Drawer(
			child: ListView(
				padding: EdgeInsets.zero,
				children: <Widget>[
					UserAccountsDrawerHeader(
						currentAccountPicture: CircleAvatar(
							backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/17161723?s=460&v=4'),
						),
						accountName: Text('Mugen_Uncle', style: TextStyle(fontWeight: FontWeight.bold),),
						accountEmail: Text('yanlezhong@gmail.com'),
						decoration: BoxDecoration(
							color: Colors.deepPurple,
							image: DecorationImage(
								image: NetworkImage('https://superdevresources.com/wp-content/uploads/2016/02/40-backgrounds-material.jpg'),
//								image: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.JAAQvXxf131JjLxiCsF_bgHaEK&pid=Api'),
								fit: BoxFit.cover, // 填充方式：铺满
								colorFilter: ColorFilter.mode(
									// 颜色滤镜方式
									Colors.deepPurple.withOpacity(0.6),
									BlendMode.hardLight,
								)
							),
						),
					),
					ListTile(
						title: Text('Messages', textAlign: TextAlign.right,),
						trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
						onTap: () => Navigator.pop(context),
					),
					ListTile(
						title: Text('Favorite', textAlign: TextAlign.right,),
						trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
						onTap: () => Navigator.pop(context),
					),
					ListTile(
						title: Text('Settings', textAlign: TextAlign.right,),
						trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
						onTap: () => Navigator.pop(context),
					),
				],
			),
		);
  }
}