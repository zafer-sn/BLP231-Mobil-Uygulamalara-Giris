import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama());
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: NotHesap(),
    );
  }
}

class NotHesap extends StatefulWidget {
  const NotHesap({super.key});

  @override
  State<NotHesap> createState() => _NotHesapState();
}

class _NotHesapState extends State<NotHesap> {
  String bseuLogoUrl =
      "https://imgs.search.brave.com/RFXK_gjk_rD8f9DNUXdmeyqJReEYKoG2Ku0qf_16TMY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YmlsZWNpay5lZHUu/dHIvZG9zeWEvU2l0/ZUxvZ29fOGRhZl9M/b2dvX0t1cnVtc2Fs/S2ltbGlrX05pc2Fu/XzIwMjUud2VicA";
  TextEditingController vizeController = new TextEditingController();
  TextEditingController odevController = new TextEditingController();
  TextEditingController finalController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("BŞEÜ Not Hesaplama")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(height: 256.0, bseuLogoUrl),
              SizedBox(height: 12.0),
              TextField(
                controller: vizeController,
                decoration: InputDecoration(
                  hintText: "Vize Notunuz(%30)",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: odevController,
                decoration: InputDecoration(
                  hintText: "Ödev Notunuz(%10)",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: finalController,
                decoration: InputDecoration(
                  hintText: "Final Notunuz(%60)",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    double ortalama =
                        double.parse(vizeController.text) * 0.3 +
                        double.parse(odevController.text) * 0.1 +
                        double.parse(finalController.text) * 0.6;
                    AlertDialog uyari = new AlertDialog(
                      title: Text("SONUÇ"),
                      content: Text("Ortalamanız: $ortalama"),
                    );
                    showDialog(context: context, builder: (context) => uyari);
                  });
                },
                child: Text("Hesapla"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
