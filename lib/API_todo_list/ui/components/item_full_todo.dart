import 'package:flutter/material.dart';
import 'package:second_task/API_todo_list/model/todo_obj.dart';



class ItemFullTodo extends StatefulWidget {
  todo_obj todo;
  ItemFullTodo({
    super.key,
    required this.todo,
  });

  @override
  State<ItemFullTodo> createState() => _ItemFullState();
}

class _ItemFullState extends State<ItemFullTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo.id.toString()),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(
              widget.todo.title.toString(),
              style: TextStyle(fontSize: 24),
            ),
            Text(
              widget.todo.completed.toString(),
              style: TextStyle(fontSize: 24),
            ),
            Text(
              widget.todo.userId.toString() ,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}