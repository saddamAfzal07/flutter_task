import 'package:flutter/material.dart';
import 'package:flutter_task/view/login_screen/widgets/body.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: const Body(),
      
    );
  }
}