// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:library_app/view/screen/ai_screen/ai_search.dart';
import 'package:library_app/view/screen/ai_screen/summarize/pdf_summarize.dart';

 import 'package:library_app/view/screen/borrow.dart';
import 'package:library_app/view/screen/genre_names.dart';
import 'package:library_app/view/screen/reserve.dart';

 

// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List book = [
    {"bookID":"5",
      "title": "test91",
      "author": "f.scot Fitzgerald",
      "total_copies": "11",
      "available_copies": "11"
    },
    { "bookID":"4",
      "title": "test91",
      "author": "f.scot Fitzgerald",
      "total_copies": "14",
      "available_copies": "11"
    },
    {"bookID":"7",
      "title": "test91",
      "author": "f.scot Fitzgerald",
      "total_copies": "13",
      "available_copies": "9"
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Define the header of the drawer, which contains the user's name, email, and profile picture.
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'nadia khaled',
      ),
      accountEmail: Text(
        'nadiakhaled@gmail.com',
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/image/user.jpg"),
      ),
    );

    // Define the items that will be displayed in the drawer. In this case, we have two items.
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text("BORROW BooK"),
          leading: const Icon(Icons.account_balance_outlined), onTap: () {
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) {
                    return  Borrow();
                  }));
        },

        ),
        ListTile(
          title: const Text(
            "RESERVE BOOK",
          ),
          leading: const Icon(Icons.account_balance_rounded),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return  Reserve();
                    }));
          },
        ),
        ListTile(
          title: const Text(
            " SEARCH BOOK",
          ),
          leading: const Icon(Icons.account_balance_wallet),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return  Search();
                    }));
          },
        ),
        ListTile(
          title: const Text(
            " PDF SUMMARIZE ",
          ),
          leading: const Icon(Icons.account_balance_wallet_outlined),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return   PdfSummarize();
                    }));
          },
        ),

      ],
    );

    // Build the scaffold that will display the app's UI.
    return Scaffold(
      appBar: AppBar(
        // Define the title of the app bar.
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "library",
              style: TextStyle(color: Colors.purple),
            ),
            Icon(Icons.import_contacts, color: Colors.purple),
          ],
        ),
      ),
      body: Semantics(
        container: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextFormField(
              onTap: () {},
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                label: Text('search'),
                suffixIcon: GestureDetector(
                    onTap: () async {

                    },
                    child: Icon(Icons.search)),
                border: OutlineInputBorder(),
                hintText: ' book',
              ),
            ),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        itemCount: book.length,
                        itemBuilder: (context, i) {
                          return Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 15, right: 30, left: 30),
                              child: InkWell(
                                onTap: () {
                                 Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return GenreNames(); }));
                                },
                                child: Container(
                                  height: 160,
                                  width: 210,
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/image/stack.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 197),
                                          child: InkWell(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return   GenreNames();
                                                }));
                                              },
                                              child: Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                              )),
                                        ),

                                        Text(
                                          book[i]["bookID"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          book[i]["title"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          book[i]["author"],
                                          style: TextStyle(
                                            color: Colors. white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          book[i]["total_copies"],
                                          style: TextStyle(
                                            color: Colors. white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          book[i]["available_copies"],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),




                                      ],
                                    ),
                                  ),
                                ),
                              ));
                        })))
          ]),
        ),
      ),
      // Add the drawer to the scaffold.
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
