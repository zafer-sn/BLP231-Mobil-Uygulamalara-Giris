void main() {
  // region Listeler
  String elma = "Elma";
  // Listelerde, Dizilerde ve Koleksiyonlarda elemanlara erişmek için indis(index) kullanılır.
  // İndisler daima 0'dan başlar.
  // İndis üzerinden elemana erişmek için yine [] kullanılır.
  var meyveler = [elma, "armut", "karpuz", "ayva", 11, 3.14, true];
  /*
  * elma -> 0 indisi
  * armut -> 1 indisi
  * karpuz -> 2 indisi
  * ayva -> 3 indisi
  */
  print(meyveler[2]);
  print(meyveler[3]);
  // print(meyveler[10]); -> Hata verir
  // print(meyveler[-5]); -> Hata verir
  print(meyveler);

  // var iller = <int>["Bilecik", "Eskişehir", 11, 16]; -> Sadece int elemanlardan oluşan dizi
  // print(iller);

  var dersler = ["Masaüstü", "Mobil", "Programlama", "Web Tasarım"];
  dersler.add("Bulut Bilişim");
  dersler.remove("Mobil");
  print(dersler);
  print(dersler.length);
  // endregion

  for (var i = 0; i < 11; i++) {
    print("Selam");
  }

  int z = 1;
  while (z < 10) {
    print(z);
    z++;
  }

  var liste = ["selam", 1, 2, 3];
  for (var i = 0; i < liste.length; i++) {
    print(liste[i]);
  }

  // forEach bir döngü değil iterasyondur çünkü eleman bittiğinde başka işlem doğrudan yaptırılamaz
  var liste2 = [true, false, 11, 55, "deneme"];
  liste2.forEach((test) => print(test));

  // map-sozluk yapısı anahtar-değer(key-value) ikilisi şeklinde ifade edilir.
  var sozluk = {"isim": "Zafer", "okul": "PMYO", "yas": 30, 25: "deneme"};
  print(sozluk["isim"]);

  sozluk.keys.forEach((element) => print(element));
  sozluk.values.forEach((element) => print(element));

  for (var i in sozluk.keys) {
    print(i);
  }

  topla();
  print(carpma(11, 2));

  print(Asalmi(-5));
}

void topla()
{
  print(11+5);
}

int carpma(int a, int b)
{
  return a*b;
}

bool Asalmi(int sayi)
{
  if (sayi < 0)
    {
      return false;
    }
  bool asalmi = true;
  for(var i = 2; i < sayi; i++)
    {
      if(sayi % i == 0)
        {
          asalmi = false;
          break;
        }
    }
  return asalmi;
}




