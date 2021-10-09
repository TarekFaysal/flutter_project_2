import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> contactNames = [
    "Imon",
    "Joy Ghosh",
    "Jihad",
    "Tarek",
    "Chirangit Banik",
    "Rajata Mondal"
  ];
  List<String> contactPhone = [
    "01745739445",
    "014759843758",
    "01748485757",
    "017347475757",
    "017347475757",
    "017347475757"
  ];
  List<String> contactImageURL = [
    "https://www.helamin.com/wp-content/uploads/2019/01/person5.jpg",
    "https://www.helamin.com/wp-content/uploads/2019/01/person5.jpg",
    "https://www.helamin.com/wp-content/uploads/2019/01/person5.jpg",
    "https://www.helamin.com/wp-content/uploads/2019/01/person5.jpg",
    "https://www.helamin.com/wp-content/uploads/2019/01/person5.jpg",
    "https://www.helamin.com/wp-content/uploads/2019/01/person5.jpg",
  ];
  int _counter = 0;
  Color myColor = Colors.red;
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
        body: Stack(children: [
          Container(
            child: Image(
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              image: AssetImage("asset/images/flower.jpeg"),
            ),
          ),
          ListView.builder(
            itemCount: contactNames.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(contactImageURL[index]),
                ),
                title: Text(contactNames[index]),
                subtitle: Text(contactPhone[index]),
                trailing: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  onPressed: null,
                ),
              );
            },
          )
        ]));
  }
}
