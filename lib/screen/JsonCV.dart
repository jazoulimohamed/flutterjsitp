import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsontp/model/Produit.dart';
import 'package:http/http.dart' as http;



class JsonCv extends StatefulWidget {

  @override
  State<JsonCv> createState() => _JsonCvState();
}

class _JsonCvState extends State<JsonCv> {
  static List<Produit> P = [];
  static Iterable L = [];



  Future<String> loadJson() async{
    return await rootBundle.loadString('lib/provider/data.json');
  }

  Future<void> afficherData() async {
    String data = await loadJson();

    L = json.decode(data);

    setState(() {
      P = List<Produit>.from(L.map((e) => Produit.fromJson(e)));
      print(P[0]);
    });

  }

  /// a distanceL
  Future<void> loadJsonhttp() async {
    final rs = await http
        .get(Uri.parse("https://dummyjson.com/products"));

    setState(() {
      L = json.decode(rs.body);

      P = List<Produit>.from(L.map((e) => Produit.fromJson(e)));

      print(P[1]);
    });
  }


  
  
  @override
  Widget build(BuildContext context) {
    afficherData();
    return Scaffold(
      appBar: AppBar(
        title: Text('produits'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(P[1].label),
            Text(P[1].id.toString()),
            Text(P[1].date),

          ],
        ),
      ),
    );
  }
}
