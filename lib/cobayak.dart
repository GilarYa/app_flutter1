import 'package:flutter/material.dart';

class cobayak extends StatelessWidget {
   const cobayak({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
title: const Text('Widget Column'),
),
  body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
                    ),
            );
        }
 }