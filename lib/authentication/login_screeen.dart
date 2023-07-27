import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email =TextEditingController();
  TextEditingController password =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(


          child:Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Text("welcome back",style: GoogleFonts.cabin(
                    color: Colors.teal,
                    fontSize: 25,
                  ),),
                ),

                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("password"),
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: const Text("don not have account? signUp"),
                ),

                InkWell(
                    onTap: (){
                      String _email= email.text.toString();
                      String _password= password.text.toString();
                      if(_email.isNotEmpty && _password.isNotEmpty){
                        Navigator.of(context).pushNamed('/home');
                      }else{
                        print("Error");
                      }
                      print("email is : ${email.text.toString()}");
                      print("password is : ${password.text.toString()}");
                    },
                    child: Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        color:Colors.teal,
                      ),
                      child: Center(
                        child: Text(
                            "login",
                            style:TextStyle(color: Colors.white)
                        ),
                      ),
                    )
                )
              ],
            ),
          )
      ),
    );

  }
}
