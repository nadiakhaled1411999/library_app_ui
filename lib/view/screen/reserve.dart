// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:library_app/view/screen/home_screen.dart';

class Reserve extends StatelessWidget {
  Reserve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          children: [
            Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.purple, Colors.pink]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
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
                    'Reserve',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    "book",
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/image/stack.jpg"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              width: 280,
              height: 50,
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff3230C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff3230C1),
                      ),
                    ),
                    label: Text(
                      " BookId",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    hintText: " bookid ",
                    hintStyle: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 280,
              height: 50,
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff3230C1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff3230C1),
                      ),
                    ),
                    label: Text(
                      "ReserveDay",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    hintText: "ReserveDay",
                    hintStyle: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(children: [
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
              ]),
            ),
          ]),
    );
  }
}
