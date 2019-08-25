import 'package:flutter/material.dart';
import 'package:FlyKind/rainforest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlyKind',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),

        );

  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: new Image.asset('assets/icon.png', fit: BoxFit.contain,
            height: 45,
          )
        ),
        body: Center(child: SwipeList()));
  }
}

class SwipeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<SwipeList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Container(
                width: 350,
                height: 250,
                decoration: new BoxDecoration(

                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                  image: DecorationImage(
                    image: new AssetImage(
                        'assets/rainforest.jpg'),
                    fit: BoxFit.fill,

                  ),
                ),
                child: Text("RAIN FOREST",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40)
                ),
                alignment: Alignment.center,

              ),
            ),
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                width: 350,
                height: 250,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                  image: DecorationImage(
                    image: new AssetImage(
                        'assets/undersea.jpg'),
                    fit: BoxFit.fill,

                  ),
                ),
                child: Text("UNDER WATER",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40)
                ),
                alignment: Alignment.center,

              ),
            ),
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                width: 350,
                height: 250,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                  image: DecorationImage(
                    image: new AssetImage(
                        'assets/sunsetcity.jpg'),
                    fit: BoxFit.fill,

                  ),
                ),
                child: Text("CITY NIGHT",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40)
                ),
                alignment: Alignment.center,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
