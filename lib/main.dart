import 'package:flutter/material.dart';
import 'package:jsontp/screen/JsonCV.dart';

void main() {
  runApp( PR());
}


class PR extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Json app",
      home: JsonCv() ,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes:{} ,
    );
  }
}

