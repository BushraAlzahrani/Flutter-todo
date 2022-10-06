import 'package:flutter/material.dart';
import 'package:my_app/screens/addtasks.dart';
import 'package:my_app/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';




void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
 
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Todo List',
      home: Home(),
    );
    
  }
}