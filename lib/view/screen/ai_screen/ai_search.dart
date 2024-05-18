// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters, collection_methods_unrelated_type

import 'package:flutter/material.dart';




class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  List<Map<String, String>> books = [
    {"bookID":"5",
      "title": "test91",
      "author": "f.scot Fitzgerald",
      "total_copies": "11",
      "available_copies": "11"
    },
    {"bookID":"5",
      "title": "test91",
      "author": "f.scot Fitzgerald",
      "total_copies": "11",
      "available_copies": "11"
    },
    {"bookID":"7",
      "title": "test91",
      "author": "f.scot Fitzgerald",
      "total_copies": "11",
      "available_copies": "11"
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
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
                    'BOOK SEARCH',

                  ),
                  subtitle: Text(
                    "BOOK",

                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/image/stack.jpg"),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),

                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/image/stack2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [

                        Positioned(
                          bottom: 15,
                          left: 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment. center,
                            children: [
                              Text(
                                books[index]["bookID"]!,
                                style: TextStyle(color: Colors.white, fontSize: 19, ),
                              ),
                              Text(
                                books[index]["title"]!,
                                style: TextStyle(color: Colors.white, fontSize: 19, ),
                              ),
                              Text(
                                books[index]["author"]!,
                                style: TextStyle(color: Colors.white, fontSize: 19,),
                              ),
                              Text(
                                "Total Copies: ${books[index]["total_copies"]!}",
                                style: TextStyle(color: Colors.white, fontSize: 19,),
                              ),
                              Text(
                                "Available Copies: ${books[index]["available_copies"]!}",
                                style: TextStyle(color: Colors .white, fontSize: 18,),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

              );
            },
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
                ),
                child: Text(
                  "RETURN",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
