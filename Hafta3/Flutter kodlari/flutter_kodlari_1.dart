import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: AnaSayfa(),
  ));
}
class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["ahmet", "mehmet", "ali", "Zafer"];
    return Scaffold(
      appBar: AppBar(title: Text("HAFTA3"),),
      body: Center(
        child: ListView.builder(
          itemCount: ogrenciler.length,
          itemBuilder: (context, index) {
          return Text(ogrenciler[index]);
        },),
      ),
    );
  }
}
