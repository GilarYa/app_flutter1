import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertama/ui/produk_form.dart';
import 'package:aplikasi_flutter_pertama/ui/produk_detail.dart';

// class ProdukPage extends StatefulWidget {
//   const ProdukPage({Key? key}) : super(key: key);

//   @override
//   _ProdukPageState createState() => _ProdukPageState();
// }

// class _ProdukPageState extends State<ProdukPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Data Produk'),
//       // ),
//       // body: ListView(
//       //   children: [
//       //     // List 1
//       //     Card(
//       //       child: ListTile(
//       //         title: Text('Kulkas'),
//       //         subtitle: Text('2500000'),
//       //       ),
//       //     ),

//       //     // List 2
//       //     Card(
//       //       child: ListTile(
//       //         title: Text('TV'),
//       //         subtitle: Text('5000000'),
//       //       ),
//       //     ),

//       //     // List 3
//       //     Card(
//       //       child: ListTile(
//       //         title: Text('Mesin Cuci'),
//       //         subtitle: Text('1500000'),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//      appBar: AppBar(
//   title: const Text("Data Produk"),
//   actions: [
//     GestureDetector(
//       // Menampilkan icon +
//       child: const Icon(Icons.add),
//       // Saat icon + ditekan
//       onTap: () async {
//         // Berpindah ke halaman ProdukForm
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const ProdukForm(),
//           ),
//         );
//       },
//     ),
//   ],
// )

//     );
//   }
// }
// Import yang diperlukan

// Kelas utama ProdukPage
class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          // Tombol tambah produk
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              // Pindah ke halaman ProdukForm
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProdukForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          // List 1
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),
          // List 2
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 5000000,
          ),
          // List 3
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

// Kelas ItemProduk
class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        // Pindah ke halaman ProdukDetail dengan data produk
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
            ),
          ),
        );
      },
    );
  }
}
