import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



class Produit{
  final int id;
  final String label;
  final String date;
  final int prix;

  const Produit({
    required this.id,required this.date,required this.label ,required this.prix

  });

  @override
  String toString() {
    // TODO: implement toString
    return "id :$id ,label:$label ,date:$date ,prix:$prix";
  }

  factory Produit.fromJson(Map<String,dynamic> data){
    return Produit(id: data["id"], label: data["label"], date: data["date"],prix:data["prix"] );
  }

}