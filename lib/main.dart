
import 'package:flutter/material.dart';
import 'package:my_app/screens/addtasks.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/register_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 181, 105, 43),
        accentColor: Color.fromARGB(255, 88, 119, 172),
      )
      ,
      title: 'Todo List',
      initialRoute: 'home',
      routes: {
        'home':(context) => Home(),
        'register':(context) => RegisterUser(),
        'addtasks':(context)=> AddTasks()
      },

    );
    
  }
}