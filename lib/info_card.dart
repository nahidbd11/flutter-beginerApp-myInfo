import 'dart:ui';
import 'package:flutter/material.dart';
import 'personinfo.dart';

class InfoCard extends StatelessWidget {
  final PersonInfo pinfo;
  final VoidCallback deleteInfo;
  InfoCard({required this.pinfo, required this.deleteInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.green[400],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${pinfo.name}',
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${pinfo.age}",
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              label: Text(
                'DELETE INFO',
                style: TextStyle(color: Colors.yellow),
              ),
              onPressed: deleteInfo,
            ),
          ],
        ),
      ),
    );
  }
}
