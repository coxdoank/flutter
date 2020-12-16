import 'package:flutter/material.dart';
import 'component.dart';
import 'pesanan_baru.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Project 01'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tombolUtama(context, "Pesanan Baru", Icons.favorite, PesananBaru()),
            tombolUtama(
                context, "Daftar Pesanan", Icons.audiotrack, DaftarPesanan()),
            tombolUtama(context, "Bayar", Icons.beach_access, Bayar()),
            tombolUtama(context, "Laporan", Icons.article, Laporan()),
          ],
        ),
      ),
    );
  }
}
