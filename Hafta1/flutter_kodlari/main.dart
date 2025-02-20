import 'package:flutter/material.dart';
/*
* Flutter Hot Reload -> Editörde yapılan küçük değişikliklerin eş zamanlı olarak emülatörde gösterilmesidir
* Flutter Hot Restart -> Editörde yapılan büyük(widget mimari değişiklikleri) değişikliklerin eş zamanlı olarak emülatörde gösterilmesidir
* */
void main()
{
  String yazi = "İLK HAFTA DENEME";
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(yazi),
        centerTitle: true,
      ),
    ),
  ));
}