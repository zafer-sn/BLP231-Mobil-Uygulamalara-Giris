import 'package:hive_flutter/hive_flutter.dart';

class Veritabani
{
  List yapilacaklarListesi = [];
  var vt = Hive.box("YapilacakVT");

  void BaslangicVerileriniOlustur()
  {
    yapilacaklarListesi = [
      ["Ders Çalış", true],
      ["Müzik Dinle", false],
    ];
  }

  void VeritabanindanVerileriYukle()
  {
    yapilacaklarListesi = vt.get("YAPILACAK");
  }

  void VeritabaniniGuncelle()
  {
    /*anahtar-değer ikilisi şeklinde tutuluyormuş*/
    vt.put("YAPILACAK", yapilacaklarListesi);
  }
  /*
  * CRUD ->
  * Create -> POST
  * Read -> GET
  * Update -> PUT
  * Delete -> DELETE  *
  * */
}