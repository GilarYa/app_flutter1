// import 'package:aplikasi_flutter_pertama/column_widget.dart';
// import 'package:aplikasi_flutter_pertama/hello_word.dart';
// import 'package:aplikasi_flutter_pertama/row_widget.dart';
// import 'package:aplikasi_flutter_pertama/cobayak.dart';
import 'package:aplikasi_flutter_pertama/ui/produk_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProdukForm()
    );
  }
}
