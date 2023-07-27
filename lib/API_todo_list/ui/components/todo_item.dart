import 'package:flutter/material.dart';
import 'package:transition/transition.dart';
import 'package:second_task/API_todo_list/model/todo_obj.dart';
import 'item_full_todo.dart';

class ItemTodo extends StatefulWidget {
  todo_obj TD;
  ItemTodo({super.key, required this.TD});

  @override
  State<ItemTodo> createState() => _ItemTodoState();
}

class _ItemTodoState extends State<ItemTodo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading:Text(
          widget.TD.id.toString(),
          style: TextStyle(fontSize: 18),
        ),
       title: Text(
          widget.TD.title.toString(),
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          widget.TD.userId.toString(),
          style: TextStyle(fontSize: 0),
        ),
        trailing: Text(
          widget.TD.completed.toString(),
          style: TextStyle(fontSize: 18),
        ),

        onTap: () {
          Navigator.push(
              context,
              Transition(
                  child: ItemFullTodo(
                    todo: widget.TD,
                  ),
                  transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
        },
      ),
    );



    //ListTile(
      //title: Text("todo title"),
      //trailing:Icon(Icons.check_box)
    //);
  }
}
