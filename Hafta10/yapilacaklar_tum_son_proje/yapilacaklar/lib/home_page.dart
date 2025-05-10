import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yapilacaklar/Veritabani.dart';
import 'package:yapilacaklar/uyari_penceresi.dart';
import 'package:yapilacaklar/yapilacak_gorev.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var vt = Hive.box("YapilacakVT");
  Veritabani ref = new Veritabani();
  TextEditingController _controller = TextEditingController();

  /*List yapilacaklarListesi = [
    ["Ders Çalış", true],
    ["Müzik Dinle", false],
  ];*/

  @override
  void initState() {
    if(vt.get("YAPILACAK") == null)
      {
        ref.BaslangicVerileriniOlustur();
      }
    else
      {
        ref.VeritabanindanVerileriYukle();
      }
    super.initState();
  }


  void checkBoxDegisti(deger, index)
  {
    setState(() {
      ref.yapilacaklarListesi[index][1] = !ref.yapilacaklarListesi[index][1];
    });
    ref.VeritabaniniGuncelle();
  }

  void kayit()
  {
    setState(() {
      ref.yapilacaklarListesi.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    ref.VeritabaniniGuncelle();

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

  void gorevSil(int index)
  {
    setState(() {
      ref.yapilacaklarListesi.removeAt(index);
    });
    ref.VeritabaniniGuncelle();
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
        itemCount: ref.yapilacaklarListesi.length,
        itemBuilder: (context, index) {
          return YapilacakGorev(
              gorevAdi: ref.yapilacaklarListesi[index][0],
              gorevTamamlandi: ref.yapilacaklarListesi[index][1],
              degisti: (p0) {
                checkBoxDegisti(p0, index);
              },
              silmeButonunaTiklandi: (p0) {
                gorevSil(index);
              },
          );
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
