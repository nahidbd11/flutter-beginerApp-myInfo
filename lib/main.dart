// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyInfoApp(),
  ));
}

class MyInfoApp extends StatefulWidget {
  const MyInfoApp({Key? key}) : super(key: key);

  @override
  State<MyInfoApp> createState() => _MyInfoAppState();
}

class _MyInfoAppState extends State<MyInfoApp> {
  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            random.nextInt(100); //change the state on press the floating button
          });
        },
        backgroundColor: Color.fromARGB(137, 156, 131, 131),
        child: Icon(
          Icons.add,
          color: Colors.amberAccent,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Nahid's info statefull",
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 24, 22, 22),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 20,
              color: Colors.cyan[50],
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Md Nahidul Islam",
              style: TextStyle(
                color: Color.fromARGB(255, 201, 196, 196),
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Address",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sobujpara,Nilphamari Sadar,Nilphamari",
              style: TextStyle(
                color: Color.fromARGB(255, 201, 196, 196),
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.amber,
                ),
                SizedBox(width: 10),
                Text(
                  "nahid801@gmail.com",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "(Total ${random.nextInt(100)} sms)",
                  style: TextStyle(
                    color: Color.fromARGB(255, 226, 63, 14),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
