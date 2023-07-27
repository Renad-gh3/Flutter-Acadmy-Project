import 'package:flutter/material.dart';
import '../utils/draws.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[100],
      ),
      drawer: Drawe(),
      body: Center(
        child: Text("<-- Click the button in the upper corner"),

      ),
    );
  }
}