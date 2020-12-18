import 'package:flutter/material.dart';

Widget tombolUtama(context, String text, IconData icon, page) {
  final textColor = Colors.white;
  final buttonColor = Colors.blue;
  return Container(
    width: 200,
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
    child: RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      color: buttonColor,
      child: Column(
        children: [
          Icon(Icons.monetization_on),
          Text(text, style: TextStyle(color: textColor))
        ],
      ),
    ),
  );
}

Widget tombolAction(context, String text) {
  final textColor = Colors.white;
  final buttonColor = Colors.blueAccent;
  return Container(
    width: 200,
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
    child: RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () {},
      color: buttonColor,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(color: textColor),
          )
        ],
      ),
    ),
  );
}

// Widget tombolAction() {
//   //MEMBUAT TOMBOL
//   return RaisedButton(
//     color: Colors.blueAccent, //MENGATUR WARNA TOMBOL
//     onPressed: () {
//       //PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
//     },
//     child: Text('Save'), //TEXT YANG AKAN DITAMPILKAN PADA TOMBOL
//   );
// }

Widget fieldName(String text) {
  // membuat Input Text

  return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ))
        ],
      ));
}

Widget fieldNameLeft(String text) {
  // membuat Input Text

  return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            padding: EdgeInsets.only(right: 15),
            child: Text(
              text,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Expanded(
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  )))
        ],
      ));
}
