
import 'package:flutter/material.dart';
import 'package:my_app/todo_screen.dart';
import 'package:my_app/home_screen.dart';
import 'package:my_app/register_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      // home: Home(),
      initialRoute: 'home',
      routes: {
        'home':(context) => Home(),
        'register':(context) => RegisterUser(),
        'todopage':(context)=> ToDoPage()
      },

    );
    
  }
}