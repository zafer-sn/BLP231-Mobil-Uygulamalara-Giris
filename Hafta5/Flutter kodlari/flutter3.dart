import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama());
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.green,
        textTheme: TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var _sayac = 0;

  void _sayaciArtir() {
    setState(() {
      _sayac++;
      print(_sayac);
    });
  }

  void _sayaciAzalt() {
    setState(() {
      _sayac--;
      print(_sayac);
    });
  }

  void _sayaciSifirla() {
    setState(() {
      _sayac = 0;
      print(_sayac);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UYGULAMA")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sayaç", style: Theme.of(context).textTheme.displayMedium),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: _sayac < 0 ? Colors.red : Colors.green
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _sayaciArtir();
            },
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              _sayaciAzalt();
            },
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
              _sayaciSifirla();
            },
          ),
        ],
      ),
    );
  }
}
