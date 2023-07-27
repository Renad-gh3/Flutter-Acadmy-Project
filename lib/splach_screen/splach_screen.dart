import 'package:flutter/material.dart';

class splachScreen extends StatefulWidget {
  const splachScreen({super.key});

  @override
  State<splachScreen> createState() => _splachScreenState();
}

class _splachScreenState extends State<splachScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushNamed('/home');

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/photo_5873007082087759558_y.jpg'),
            const CircularProgressIndicator(),
          ],
        ) ,

      ),
    );
  }
}
