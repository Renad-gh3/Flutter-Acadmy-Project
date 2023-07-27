import 'package:flutter/material.dart';
import 'package:second_task/API_todo_list/ui/todo_list_app.dart';
import 'package:transition/transition.dart';
import '../api_app/breaking_bad_app/ui/breaking_bad.dart';
import '../basic_widget_app/bottom_navigation.dart';
import '../bmi_calculator/bmi_calculator.dart';
import '../normal_todolist/ui/todolist_app.dart';


class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/photo_5875061845981773157_x.jpg'),
            ),
            accountName: Text("Renad Alghamdi"),
            accountEmail: Text("Renad_gh3@gmail.com"),
          ),

          ListTile(
            title: Text("Home Screen"),
            onTap: (){
              Navigator.of(context).pushNamed('/home');
            },
            splashColor: Colors.blueGrey[100],
          ),
          ListTile(
            title: Text("Bottom Navigation Screen"),
            onTap: (){
              Navigator.push(
                  context,
                  Transition(
                      child: BottomNavigatonExample(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.blueGrey[100],
          ),
          ListTile(
            title: Text("BMA Calculator"),
            onTap: (){
              Navigator.push(
                  context,
                  Transition(
                      child: BMICalculator(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.blueGrey[100],
          ),

          ListTile(
            title: Text("Breaking Bad API App"),
            onTap: (){
              Navigator.push(
                  context,
                  Transition(
                      child: const BreakingBadApp(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.blueGrey[100],
          ),
          ListTile(
            title: Text("todo list API App"),
            onTap: (){
              Navigator.push(
                  context,
                  Transition(
                      child: const TodoListAPP(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.blueGrey[100],
          ),
          ListTile(
            title: Text("Normal todo list App"),
            onTap: (){
              Navigator.push(
                  context,
                  Transition(
                      child: const NorTodoListApp(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.blueGrey[100],
          ),

        ] ,
      ),
    );
  }
}
