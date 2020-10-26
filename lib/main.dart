import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Apps Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
      routes: <String, WidgetBuilder>{
        '/HalamanSatu': (BuildContext context) =>
            new HalamanSatu(title: 'Halaman Satu'),
        '/HalamanDua': (BuildContext context) =>
            new HalamanDua(title: 'Halaman Dua'),
        '/HalamanTiga': (BuildContext context) =>
            new HalamanTiga(title: 'Halaman Tiga'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        leading: new Icon(Icons.home),
        title: Center(child: Text(widget.title)),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: Container(
        padding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: <Widget>[
            new myCard(
              icon: Icons.home,
              teks: "Home",
              warnaIcon: Colors.redAccent,
              pindahKe: 1,
            ),
            new myCard(
              icon: Icons.favorite,
              teks: "Favorite",
              warnaIcon: Colors.pink,
              pindahKe: 2,
            ),
            new myCard(
              icon: Icons.settings,
              teks: "Settings",
              warnaIcon: Colors.grey,
              pindahKe: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class myCard extends StatelessWidget {
  myCard({this.icon, this.teks, this.warnaIcon, this.pindahKe});

  final IconData icon;
  final String teks;
  final Color warnaIcon;
  final int pindahKe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        elevation: 4.0,
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Container(
            padding: new EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new IconButton(
                    icon: new Icon(
                      icon,
                      color: warnaIcon,
                      size: 30.0,
                    ),
                    onPressed: () {
                      if (pindahKe == 1) {
                        Navigator.pushNamed(context, '/HalamanSatu');
                      } else if (pindahKe == 2) {
                        Navigator.pushNamed(context, '/HalamanDua');
                      } else if (pindahKe == 3){
                        Navigator.pushNamed(context, '/HalamanTiga');
                      }
                    }),
                new Text(
                  teks,
                  style: new TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HalamanSatu extends StatefulWidget {
  HalamanSatu({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HalamanSatu createState() => _HalamanSatu();
}

class _HalamanSatu extends State<HalamanSatu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new IconButton(
            icon: new Icon(
              Icons.pages,
              size: 50.0,
            ),
            onPressed: null),
      ),
    );
  }
}

class HalamanDua extends StatefulWidget {
  HalamanDua({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HalamanDua createState() => _HalamanDua();
}

class _HalamanDua extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new IconButton(
            icon: new Icon(
              Icons.pages,
              size: 50.0,
            ),
            onPressed: null),
      ),
    );
  }
}

class HalamanTiga extends StatefulWidget {
  HalamanTiga({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HalamanTiga createState() => _HalamanTiga();
}

class _HalamanTiga extends State<HalamanTiga> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new IconButton(
            icon: new Icon(
              Icons.pan_tool,
              size: 50.0,
            ),
            onPressed: null),
      ),
    );
  }
}
