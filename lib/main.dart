// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyInfoApp(),
  ));
}

class MyInfoApp extends StatelessWidget {
  const MyInfoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          "Nahid's info",
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
