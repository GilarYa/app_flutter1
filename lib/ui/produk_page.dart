import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertama/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Data Produk'),
      // ),
      // body: ListView(
      //   children: [
      //     // List 1
      //     Card(
      //       child: ListTile(
      //         title: Text('Kulkas'),
      //         subtitle: Text('2500000'),
      //       ),
      //     ),

      //     // List 2
      //     Card(
      //       child: ListTile(
      //         title: Text('TV'),
      //         subtitle: Text('5000000'),
      //       ),
      //     ),

      //     // List 3
      //     Card(
      //       child: ListTile(
      //         title: Text('Mesin Cuci'),
      //         subtitle: Text('1500000'),
      //       ),
      //     ),
      //   ],
      // ),
     appBar: AppBar(
  title: const Text("Data Produk"),
  actions: [
    GestureDetector(
      // Menampilkan icon +
      child: const Icon(Icons.add),
      // Saat icon + ditekan
      onTap: () async {
        // Berpindah ke halaman ProdukForm
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProdukForm(),
          ),
        );
      },
    ),
  ],
)

    );
  }
}
