import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  TextEditingController taskcontroller = TextEditingController();

  addtask() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 198, 144, 90),
          title: Row(
            children: [
              Icon(
                Icons.menu,
                color: Color.fromARGB(167, 75, 36, 4),
                size: 35,
              ),
            ],
          ),
        ),
        // floatingActionButton: ,
        body: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                Container(
                    height: 60,
                    width: 400,
                    child: Text('Todo List',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ))),


              ])),
        ));
  }
}
