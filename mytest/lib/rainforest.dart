//Rainforest Second Screen

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rain Forest',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rain Forest'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/rain.gif"),
              fit: BoxFit.cover,
            ),
          ),
          child: Text("Just Breathe",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40)
          ),
          alignment: Alignment.center,

        ),
      ),
    );
  }
}