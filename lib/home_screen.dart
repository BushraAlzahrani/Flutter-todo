import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
        child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                Text( 'Welcome to To-Do list'),
                    OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(width: 2, color: Colors.blue),
                    backgroundColor: Colors.blue,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: Text('Register'),
                  
                ),
                    OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(width: 2, color: Colors.blue),
                    backgroundColor: Colors.blue,
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'todopage');
                  },
                  child: Text('todopage'),
                ),
              ]),
              )));
  }
}