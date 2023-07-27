import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class flutter_toast_example extends StatefulWidget {
  const flutter_toast_example({super.key});

  @override
  State<flutter_toast_example> createState() => _flutter_toast_exampleState();
}

class _flutter_toast_exampleState extends State<flutter_toast_example> {

  void _sendEmail() {
    Fluttertoast.showToast(
        msg: "Email sent Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:MaterialButton(
        onPressed:(){
           _sendEmail();
        } ,
        color: Colors.red,
         child: const Text("Send Email",
         style: TextStyle(color: Colors.white,
    ),
    ),
    ),
      ),
    );
  }
}
