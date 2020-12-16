import 'package:flutter/material.dart';
import 'package:project_01/component.dart';

class PesananBaru extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesanan Baru"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Text("ini halaman pesanan baru"),
            // RaisedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: Text("Back To Home"),
            // ),
            // RaisedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => DaftarPesanan()),
            //     );
            //   },
            //   child: Text("Ke Daftar Pesanan"),
            // ),
            fieldName('Kode'),
            fieldName('Nama Lengkap'),
            fieldName('Keterangan'),
            fieldName('Harga'),
            fieldName('Satuan'),
            tombolAction(context, "Simpan"),
          ],
        ),
      ),
    );
  }
}

class DaftarPesanan extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Pesanan"),
      ),
    );
  }
}

class Bayar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bayar"),
      ),
    );
  }
}

class Laporan extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jangan Lupa Laporan"),
      ),
    );
  }
}
