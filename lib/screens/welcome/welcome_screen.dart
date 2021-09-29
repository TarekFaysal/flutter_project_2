import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Our first project"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("barisal" + _counter.toString())),
              Container(
                  // color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          _counter = _counter + 1;
                        });
                      },
                      child: Text("Barisal")))
            ],
          ),
          Row(
            children: [
              Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Hello")),
              Container(
                  // color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Barisal")))
            ],
          ),
          Row(
            children: [
              Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Hello")),
              Container(
                  //color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child:
                      OutlineButton(onPressed: () {}, child: Text("Barisal")))
            ],
          ),
        ],
      ),
    );
  }
}
