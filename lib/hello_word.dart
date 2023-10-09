import 'dart:html';

import 'package:flutter/material.dart';

class HelloWord extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("belajar flutter"),),
        body: const Center(
          child: Text('Hello World!'),
        ),
      
    );
  }
}