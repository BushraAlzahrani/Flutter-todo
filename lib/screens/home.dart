import 'package:flutter/material.dart';
import '../widgets/todo_item.dart';
import '../model/todo.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  TextEditingController taskcontroller = TextEditingController();

  final todoList = ToDo.todoList();
  final _todoController = TextEditingController();
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
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
                      for (ToDo task in todoList.reversed)
                        ToDoItem(
                          todo: task,
                          onToDoChanged: _handleTodoChange,
                          onDeleteItem: _deleteTodoItem,
                        ),
                    ])),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(192, 190, 190, 190),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 37, 27, 22),
                        // offset: (0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        // spreadRadius:0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(
                        hintText: 'Add a new todo task',
                        border: InputBorder.none,
                      )),
                )),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 97, 153, 216),
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                    onPressed: () {
                      _addTodoItem(_todoController.text);
                    },
                  ),
                )
              ]),
            ),
          ],
        ));
  }

  void _addTodoItem(String todo) {
    setState(() {
      todoList.add(ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: todo));
    });
    _todoController.clear();
  }

  void _handleTodoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteTodoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }
}
