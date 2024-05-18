// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:library_app/view/screen/home_screen.dart';



class GenreNames extends StatelessWidget {
  GenreNames({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column (
        children: [
        Container(
          decoration: BoxDecoration(  gradient: LinearGradient(
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
  Navigator.pop(context,
  MaterialPageRoute(builder: (context) {
  return HomeScreen() ;
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
                'GenreNames',
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
                backgroundImage: AssetImage( "assets/image/stack.jpg"),
              ),
            ),
            SizedBox(
              height: 10,
            ),




          ] ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets. only(top: 100,bottom: 50),
            child:  Container( height: 200,width:250,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20), // تحديد قيمة تقريبية للزوايا
              ),
              child: Center( child:  SingleChildScrollView(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Science fiction" ,
                          style:TextStyle(color: Colors.white,fontSize: 15,  )),
                      Text( "fantasy",
                          style:TextStyle(color: Colors.white,fontSize: 18,  )),
                      Text(  "mystery",
                          style:TextStyle(color: Colors.white,fontSize: 18, )),
                      Text(  "Romance",
                          style:TextStyle(color: Colors.white,fontSize: 18, )),
                      Text(   "Thiller",
                          style:TextStyle(color: Colors.white,fontSize: 18, )),
                      Text(  " Horror",
                          style:TextStyle(color: Colors.white,fontSize: 18, )),
                      Text(   "Historical Fiction",
                          style:TextStyle(color: Colors.white,fontSize: 18, )), Text(   " Biography",
                          style:TextStyle(color: Colors.white,fontSize: 18, )),





                    ]),
              ),),),),),



        Container(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical:20),
          child: Column(
              children: [

                InkWell(
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                          return HomeScreen() ;

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
              ]),),]),);
  }
}

