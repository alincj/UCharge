import 'package:flutter/material.dart';
import 'package:flutter_task_planner_app/screens/calendar_page.dart';
import 'package:flutter_task_planner_app/screens/login_screen.dart';
import 'package:flutter_task_planner_app/screens/logo_and_back.dart';
import 'package:flutter_task_planner_app/theme/colors/light_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_task_planner_app/widgets/task_column.dart';
import 'package:flutter_task_planner_app/widgets/active_project_card.dart';
import 'package:flutter_task_planner_app/widgets/top_container.dart';

class HomePage extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.kDarkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: LightColors.kGreen,
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.kLavender,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 400,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.menu,
                            color: LightColors.kDarkBlue, size: 30.0),
                        Icon(Icons.search,
                            color: LightColors.kDarkBlue, size: 25.0),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                              backgroundColor: LightColors.kLavender,
                              radius: 100.0,
                              backgroundImage: AssetImage(
                                'assets/images/U-Charge_logo_w_color.png',
                              ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(

              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextButton(
                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      backgroundColor: Colors.black,
                                      textStyle: const TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => LoginScreen()
                                        ));
                                      },
                                     child: const Text('Fazer Registo'),
                    ),
                ),
                    Container(color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => CalendarPage()
                            ));
                          },
                          child: const Text('Google'),
                          ),

                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              //paddin: const EdgeInsets.all(9),
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => CalendarPage()
                            ));
                          },
                          child: const Text('Facebook'),
                          ),


                        ]),

                      ),


                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              subheading('Já tens uma conta?'),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CalendarPage()),
                                  );
                                },
                                child: calendarIcon(),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
