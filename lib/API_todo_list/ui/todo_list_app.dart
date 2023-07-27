import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_task/API_todo_list/ui/components/todo_item.dart';
import '../../utils/draws.dart';
import '../services/api.dart';

class TodoListAPP extends StatefulWidget {
  const TodoListAPP({Key? key}) : super(key: key);

  @override
  State<TodoListAPP> createState() => _TodoListAPPState();
}

class _TodoListAPPState extends State<TodoListAPP> {

  //List Todos=[];
  List todo_objList = [];

  void getAlltodos() async {
    TODOSApi.getCharacters().then((response) {
      setState(() {
        todo_objList = response;
      });
      print(response);
    });
  }

  @override
  void initState() {
    super.initState();
    getAlltodos();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("todoList API App "),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[200],
        elevation: 5,
      ),
      drawer:const Drawe(),

      body: SingleChildScrollView(
       child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.8,
            width: double.infinity,
            child:  ListView.builder(
              itemCount: todo_objList.length,
              itemBuilder: (context, index) {
                return ItemTodo(
                  TD: todo_objList[index],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.085,
            child: Padding(
              padding: EdgeInsets.all(5),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextField(
                    keyboardType: TextInputType.text,
                   // controller: weightController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter Your TODO ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle: GoogleFonts.aBeeZee(),
                    ),
                  ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.15,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Icon(Icons.add),

                      ),
                    ),
                  )
                ],
              )
            ),
           ),
          )
        ],
      ),
      ),
    );
  }
}
