void main() {
  String isim = "Zafer";
  int yas = 29;
  double boy = 1.70;
  bool girisYaptimi = false;
  print(isim);

  var piSayisi = 3.14;
  var okul = "PMYO";
  var bilecikPlaka = 11;
  var sistemAcikmi = false;
  print(bilecikPlaka);

  // Koşul-Şart Blokları
  if (true) {
    print("Selam");
  }
  // = işareti assign(atama) operatörü olarak isimlendirilir.
  var harfNotu = "DD";
  /* == matematiksel eşitlik ya da içeriksel eşitlik anlamına gelir.
  * >= büyük veya eşit
  * <= küçük veya eşit
  * < küçük
  * > büyük
  * != eşit değil
  * */
  if (harfNotu == "AA") {
    print("Dersi geçtiniz.");
  } else if (harfNotu == "CC") {
    print("Ortalama notla geçtiniz.");
  } else if (harfNotu == "DD") {
    print("Sorumlu geçtiniz.");
  } else {
    print("Dersten kaldınız");
  }

  var istanbulPlaka = 34;
  if (istanbulPlaka == 34) {
    print("Değer doğrudur");
  }
  if (istanbulPlaka >= 34) {
    print("Bu da sağlanır.");
  }

  var ad = "Zafer";
  var tc = 1234;
  print("Sizin isminiz..:" + ad + "    " + "Sizin T.C..:" + tc.toString());
  print("Sizin isminiz: ${ad} sizin tcniz: $tc");

  



}
