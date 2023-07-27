import 'package:flutter/material.dart';
import 'package:second_task/basic_widget_app/flutter_toast_example.dart';
import 'package:second_task/basic_widget_app/grid_view_eample.dart';
import 'package:second_task/basic_widget_app/list_view_example.dart';

class BottomNavigatonExample extends StatefulWidget {
  const BottomNavigatonExample({super.key});

  @override
  State<BottomNavigatonExample> createState() => _BottomNavigatonExampleState();
}

class _BottomNavigatonExampleState extends State<BottomNavigatonExample> {
  int currentindex = 0;

  void onItemTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List<Widget> titles = [
    Text("GridView"),
    Text("ListView"),
    Text("Flutter Toast"),
  ];

  List<Widget> widgetScreens = [
    GridViewExample(),
    ListViewExample(),
    flutter_toast_example(),
  ];
//const Text("Bottom Navigaton Example"),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titles[currentindex],
        centerTitle: true,
        backgroundColor: Colors.blueGrey[200],
      ),
      drawer: Drawer(),
      body: Center(
        child: widgetScreens[currentindex],
      ),
    bottomNavigationBar: BottomNavigationBar(
    selectedItemColor: Colors.deepOrange,
    currentIndex: currentindex,
    type: BottomNavigationBarType.shifting,
      iconSize: 25,
      elevation: 5,
      unselectedItemColor: Colors.grey,
      onTap: onItemTap,
        items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.grid_3x3),
      label: 'GridView',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.list_alt),
    label: 'ListView',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.notification_add),
    label: 'Flutter Toast',
     ),
   ],
  ),
);
}
}
