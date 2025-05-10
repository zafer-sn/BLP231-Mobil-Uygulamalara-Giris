import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yapilacaklar/home_page.dart';
/*
* Asenkron programlama
*
* */
void main() async
{
  // init -> initialize -> başlatma
  await Hive.initFlutter();
  await Hive.openBox("YapilacakVT");
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        useMaterial3: false
      ),
      home: AnaSayfa(),
    );
  }
}

