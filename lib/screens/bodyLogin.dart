import 'dart:html';

import 'package:flutter/material.dart';


import 'package:flutter_task_planner_app/main.dart';
import 'package:flutter_task_planner_app/screens/logo_and_back.dart';

class BodyLogin extends StatelessWidget{
      const BodyLogin(
      {
        Key key,
    }) : super(key: key);

      @override
      Widget build(BuildContext context){
        Size size = MediaQuery.of(context).size;
        return Scaffold(

         // child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           // children: <Widget>[
            //  Text("Login")
           // ],
         // ),
        );
      }
    }