import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: AnaSayfa()));
}
class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("UYGULAMA")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var not = 35;
            var icerik = "";
            if (not > 50) {
              icerik = "Geçtiniz";
            } else {
              icerik = "Kaldınız";
            }
            var uyari = AlertDialog(
              title: Text("UYARI"),
              content: Text("Geçme Durumu: $icerik"),
            );
            showDialog(context: context, builder: (context) => uyari);
          },
          child: Text("TIKLA"),
        ),
      ),
    );
  }
}
