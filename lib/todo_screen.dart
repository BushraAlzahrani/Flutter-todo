import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  @override
  State<ToDoPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ToDoPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Tasks'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                TextField(
                  autocorrect: false,
                  textInputAction: TextInputAction.send,
                  controller: null,
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  cursorColor: Colors.black,
                  maxLength: 50,
                  style: TextStyle(
                    color: Colors.indigo,
                    letterSpacing: 1.0,
                    fontSize: 16,
                  ),
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Write Your task',
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(width: 2, color: Colors.blue),
                    backgroundColor: Colors.blue,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Add Task'),
                ),
                ListTile(
                  trailing: Checkbox(value: false , onChanged: null,),
                  title: Text('first task'),
                ),

              ])),
        ));
  }
}
