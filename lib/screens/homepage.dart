// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cipherschool/components/homepage_component.dart';
import 'package:cipherschool/screens/coursepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:coverflow/coverflow.dart';
import 'package:cipherschool/components/coverflow_component.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('cipper school'),
          centerTitle: true,
        ),
        // backgroundColor: Colors.pinkAccent[100],
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(20),
          shape: CircularNotchedRectangle(),
          height: 60, //shape of notch
          notchMargin: 5,
          color: Colors.pink[100],
          elevation: 50.0,
          child: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Icon(Icons.home),
              SizedBox(
                width: 50,
              ),
              Icon(Icons.menu_book_sharp),
              SizedBox(
                width: 50,
              ),
              Icon(Icons.trending_up_outlined),
              SizedBox(
                width: 50,
              ),
              Icon(Icons.account_circle_sharp),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 90,
                  width: 200,
                  child: Text(
                    '''Welcome to the Future of learning !''',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 270,
                  child: Text(
                    '''start learning by best creaters of absolutly free''',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(width: 400, child: Image.asset('assets/banner1.png')),
                Divider(),
                SizedBox(
                  height: 50,
                  width: 270,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const coursepage()));
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)))),
                    child: Row(
                      children: [
                        Text('Start studying'),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: CoverFlow(
                    images: images,
                    // shadowOpacity: 0.3,
                    // shadowOffset: Offset(3, 8),
                  ),
                ),
                Image.asset('assets/banner2.jpeg'),
                Divider(),

                category_container(
                    context,
                    "assets/study_img1.jpg",
                    'unlock your learning potential with chipperschool',
                    'best platform for the students',
                    'For student',
                    Icons.book_online),
                     category_container(
                    context,
                    "assets/study_img2.jpg",
                    'Empowering students to open their minds to atmost knowledge',
                    'Be thae mentor you never had',
                    'For Creators',
                    Icons.medical_information_rounded)
          
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}
