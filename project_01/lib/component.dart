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
