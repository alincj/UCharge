import 'package:flutter/material.dart';
import 'package:flutter_task_planner_app/screens/logo_and_back.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen(
  {
  Key key
  }
      ): super(key: key);
  @override

  Widget build( BuildContext context){
    return Scaffold(
      body: Logo_And_Back(),

      );


  }
}