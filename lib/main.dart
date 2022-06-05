// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'personinfo.dart';
import './info_card.dart';

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
  List<PersonInfo> personName = [
    PersonInfo(name: "nahidul islam nahid", age: 25),
    PersonInfo(name: "nahidul islam nahid is joss", age: 25),
    PersonInfo(name: "nahidul islam nahid is boss", age: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          "Nahid's info ",
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 24, 22, 22),
        centerTitle: true,
      ),
      body: Column(
        children: personName
            .map((pname) => InfoCard(
                  pinfo: pname,
                  deleteInfo: () {
                    setState(() {
                      personName.remove(pname);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
