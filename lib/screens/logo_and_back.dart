
import 'package:flutter/material.dart';
import 'package:flutter_task_planner_app/widgets/back_button.dart';

class Logo_And_Back extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        alignment: Alignment.center,
        child: Stack( children: <Widget>[
          Positioned(
              top: 60,
              left: 15,
              child: MyBackButton()
          ),
          Positioned(
              top: 20,
              right: 0,
              child: Image.asset(
            "assets/images/U-Charge_Logo.png",
            width: size.width*0.3,)
            )
          ],
        ),
      ),
    );
  }





}