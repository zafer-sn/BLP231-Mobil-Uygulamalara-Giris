import 'package:flutter/material.dart';
import 'package:hafta6todoapp/home_page.dart';

void main()
{
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

