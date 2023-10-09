import 'package:flutter/material.dart';

class rowwidget extends StatelessWidget {
   const rowwidget({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
title: const Text('Widget Column'),
),
 body: Row(
            children: const [
            Text('Row 1'),
            Text('Row 2'),
            Text('Row 3'),
            Text('Row 4')
                          ],
                    ),
            );
        }
 }