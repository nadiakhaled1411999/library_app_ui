// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:library_app/view/screen/home_screen.dart';

import '../../../../core/style/app_colors.dart';

class Summarize extends StatelessWidget {
  Summarize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink]),

                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context, MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'BOOK SUMMARIZE',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                     "BOOK",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage( "assets/image/stack.jpg"),
                  ),


                ),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
              child: Container(
                padding: EdgeInsets.only(top: 100, bottom: 100, right: 20, left: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Theme.of(context).primaryColor.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(255, 0, 0, 0.3),
                        const Color.fromRGBO(156, 39, 176, 0.3)
                      ]),
                ),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.center, children: [

                      Center(
                        child: Text(
                          "BOOK SUMMARIZE",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),





                ]),
              ),
            ),SizedBox(height: 60,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 60,
                    // ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) {
                              return HomeScreen();

                            }));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Colors.purple, Colors.pink]),
                          ),
                          child: Text(
                            "RETURN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                  ],
                ))
          ],
        ));
  }
}
