import 'package:flutter/material.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  const App({super.key}); // base

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.green,
      ),
      home: Ornek(),
    );
  }
}

class Ornek extends StatefulWidget {
  const Ornek({super.key});

  @override
  State<Ornek> createState() => _OrnekState();
}

class _OrnekState extends State<Ornek> {
  String? _secilenDeger = "Bilgisayar Programcılığı";
  double _sliderDegeri = 0.5;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("DropdownMenu"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          new DropdownButton(
            items: [
              DropdownMenuItem(
                  child: Text("Bilgisayar Programcılığı"),
                  value: "Bilgisayar Programcılığı"),
              DropdownMenuItem(
                  child: Text("Web Tasarımı ve Kodlama"),
                  value: "Web Tasarımı ve Kodlama"),
              DropdownMenuItem(
                  child: Text("İnternet ve Ağ Teknolojileri"),
                  value: "İnternet ve Ağ Teknolojileri"),
            ],
            onChanged: (value) {
              setState(() {
                _secilenDeger = value;
              });
            },
            value: _secilenDeger,
            isExpanded: true,
          ),
          SizedBox(height: 12.0,),
          Text("Seçilen Bölüm: $_secilenDeger"),
          SizedBox(height: 12.0,),
          Opacity(opacity: _sliderDegeri, child: Image.network("https://avatars.githubusercontent.com/u/162111813?v=4")),
          SizedBox(height: 12.0,),
          Slider(
            divisions: 10,
            label: "Şeffaflık",
            value: _sliderDegeri, onChanged: (value) {
              setState(() {
                _sliderDegeri = value;
              });
          },)
        ],
      ),
    );
  }
}
