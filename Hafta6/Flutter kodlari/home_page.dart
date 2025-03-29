import 'package:flutter/material.dart';
import 'package:hafta6todoapp/uyari_penceresi.dart';
import 'package:hafta6todoapp/yapilacak_gorev.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  TextEditingController _controller = TextEditingController();

  List yapilacaklarListesi = [
    ["Ders Çalış", true],
    ["Müzik Dinle", false],
  ];

  void checkBoxDegisti(deger, index)
  {
    setState(() {
      yapilacaklarListesi[index][1] = !yapilacaklarListesi[index][1];
    });
  }

  void kayit()
  {
    setState(() {
      yapilacaklarListesi.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();

  }

  void yeniGorevOlustur()
  {
    showDialog(context: context, builder: (context) {
      return UyariPenceresi(
        controller: _controller,
        kaydet: kayit,
        iptalEt: Navigator.of(context).pop,
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("YAPILACAKLAR"),
      ),
      body: ListView.builder(
        itemCount: yapilacaklarListesi.length,
        itemBuilder: (context, index) {
          return YapilacakGorev(
              gorevAdi: yapilacaklarListesi[index][0],
              gorevTamamlandi: yapilacaklarListesi[index][1],
              degisti: (p0) {
                checkBoxDegisti(p0, index);
              },);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          yeniGorevOlustur();

      },),
    );
  }
}
