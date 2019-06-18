import 'package:acg12/view/setting/SettingsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new IndexState();
  }

}

class IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello Flutter'),
      ),
      drawer: new Drawer(//New added
//        child: new Text('I m a drawer'),//New added
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("小薇识花"),
              accountEmail: Text("flutter@gmail.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new ExactAssetImage("images/Head0.png"),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new ExactAssetImage("images/mm.jpg"),),),
            ),
            new ListTile(
              title: new Text("识花"),
              trailing: new Icon(Icons.local_florist),
            ),
            new ListTile(
              title: new Text("搜索"),
              trailing: new Icon(Icons.search),
            ),
            new Divider(),
            new ListTile(
              title: new Text("设置"),
              trailing: new Icon(Icons.settings),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new SettingsPage()));
              },
            ),
          ],
        ),
      ),//New added
      body: new Center(
        child: new Text('Hello, Flutter!😍😍😍'),
      ),
    );
  }

}