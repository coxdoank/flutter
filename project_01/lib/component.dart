import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

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

// Widget dropDownList(String text) {
//   String dropdownValue = 'One';
//   return DropdownButton<String>(
//     value: dropdownValue,
//     icon: Icon(Icons.arrow_downward),
//     iconSize: 24,
//     elevation: 16,
//     style: TextStyle(color: Colors.deepPurple),
//     underline: Container(
//       height: 2,
//       color: Colors.deepPurpleAccent,
//     ),
//     onChanged: (String newValue) {
//       // setState(() {
//       //   dropdownValue = newValue;
//       // });
//     },
//     items: <String>['One', 'Two', 'Free', 'Four']
//         .map<DropdownMenuItem<String>>((String value) {
//       return DropdownMenuItem<String>(
//         value: value,
//         child: Text(value),
//       );
//     }).toList(),
//   );
// }

Widget dropDownList(String text) {
  String _myActivity;
  // String _myActivityResult;

  return DropDownFormField(
    titleText: 'My workout',
    hintText: 'Please choose one',
    value: _myActivity,
    onSaved: (value) {},
    onChanged: (value) {
      print(value);
      _myActivity = value;
    },
    dataSource: [
      {
        "display": "Running",
        "value": "Running",
      },
      {
        "display": "Climbing",
        "value": "Climbing",
      },
      {
        "display": "Walking",
        "value": "Walking",
      },
      {
        "display": "Swimming",
        "value": "Swimming",
      },
      {
        "display": "Soccer Practice",
        "value": "Soccer Practice",
      },
      {
        "display": "Baseball Practice",
        "value": "Baseball Practice",
      },
      {
        "display": "Football Practice",
        "value": "Football Practice",
      },
    ],
    textField: 'display',
    valueField: 'value',
  );
}
