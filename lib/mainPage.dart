import 'package:flutter/material.dart';

class MainPageState extends State<MainPage> {
  var title = '';
  Drawer _buildDrawer(context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.asset(
                    'images/project.jpg',
                    height: 90.0,
                    width: 90.0,
                    fit: BoxFit.cover,
                  ),
                  new Text('Nguyen Van Khanh',
                      style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  new Text(
                    'Softwate Developer',
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue[300],
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.photo_album),
            title: new Text('Photo'),
            onTap: () {
              setState(() {
                this.title = 'This is Photo Page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.portrait),
            title: new Text('Portrait'),
            onTap: () {
              setState(() {
                this.title = 'This is Portrait Page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text('Notifications'),
            onTap: () {
              setState(() {
                this.title = 'This is Notifications Page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: () {
              setState(() {
                this.title = 'This is Settings Page';
              });
              Navigator.pop(context);
            },
          ),
          new Divider(
            color: Colors.black38,
            indent: 18.0,
          ),
          new ListTile(
            title: new Text('About us'),
            onTap: () {
              setState(() {
                this.title = 'This is About us Page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Privacy'),
            onTap: () {
              setState(() {
                this.title = 'This is Privacy Page';
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Drawer in Flutter"),
      ),
      body: new Center(
        child: new Text(this.title, style: new TextStyle(fontSize: 25.0)),
      ),
      drawer: _buildDrawer(context),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}
