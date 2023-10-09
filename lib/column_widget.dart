import 'package:flutter/material.dart';

class ColumnWignet extends StatelessWidget {
   const ColumnWignet({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
title: const Text('Widget Column'),
),
 body: Column(
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