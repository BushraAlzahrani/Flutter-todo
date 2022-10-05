import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  @override
  State<RegisterUser> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterUser> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: 
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Padding(
              padding: EdgeInsets.all(20),
        child: 
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              // Add TextFormFields and ElevatedButton here.
              TextFormField(
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
                  labelText: 'Username',
                  
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              TextFormField(
                obscureText: true,
                cursorColor: Colors.black,
                maxLength: 50,
                style: TextStyle(
                  color: Colors.indigo,
                  letterSpacing: 1.0,
                  fontSize: 16,
                ),
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),



              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
    ),
        
       ));
  }
}
