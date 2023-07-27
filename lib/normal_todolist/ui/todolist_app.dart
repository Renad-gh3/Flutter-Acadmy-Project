import 'package:flutter/material.dart';
import '../../utils/draws.dart';
import 'component/todo_item.dart';


class NorTodoListApp extends StatefulWidget {
  const NorTodoListApp({Key? key}) : super(key: key);

  @override
  State<NorTodoListApp> createState() => _TodoListAppState();
}
class _TodoListAppState extends State<NorTodoListApp> {
  List<String> todos = [];
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList App"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[200],
        elevation: 5,
      ),
      drawer: const Drawe(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return TodoItem(
                    text: todos[index],
                    onDelete: () {
                      // Call the function to delete the todo item
                      setState(() {
                        todos.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.085,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _textEditingController,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Enter Your TODO",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10), // Add border radius to the right corners
                              ),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.blueGrey[100],
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Add space of 10 units between the text field and the button
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[200],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              String newTodo = _textEditingController.text.trim();
                              if (newTodo.isNotEmpty) {
                                setState(() {
                                  todos.add(newTodo);
                                });
                                _textEditingController.clear();
                              }
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}