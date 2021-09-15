import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final request = 'https://api.hgbrasil.com/finance';

void main() async {
  runApp(
    MaterialApp(home: Home()),
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "\$ Conversor de Moeda \$",
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
