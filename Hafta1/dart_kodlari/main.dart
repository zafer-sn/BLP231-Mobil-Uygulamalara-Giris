/*
* void -> Bir fonksiyonun değer döndürmeyeceğini belirtir.
* main -> Bir program çalıştırıldığında ilk çalışan fonksiyondur.
* () -> Fonksiyonun parametrelerini belirttiğimiz kısımdır.
* {} -> Fonksiyonun scope-blok alanıdır.
* print() -> Ekrana bir şey yazdırmak için kullanılan fonksiyondur.
* Bir değişken tanımlamak için degiskenTipi degiskenAdi = degiskenDegeri;
* Dart programlama dilinde 4 tane değişkenTipi vardır. Bunlar: String, int, double, bool
* Bu tipleri primitive(ilkel) değişken tipi denir.
* String değişken tipi -> Metinsel değerleri tutmak için kullanılır.
* int -> Tamsayı değerleri tutmak için kullanılır.
* double -> Ondalıklı sayı değerleri tutmak için kullanılır.
* bool -> Mantıksal değerleri tutmak için kullanılır. Ya true ya false değeri alır. Doğru-Yanlış, Var-Yok, 0-1 şeklinde de düşünülebilir.
* Programlama dillerinde çift tırnak gördüğümüz neredeyse her yer String bir ifadedir.
* degiskenAdi -> camelCase
* DegiskenAdi -> PascalCase
* degisken_adi -> snake_case
* */
void main()
{
  String selamVer = "Selam Dünya!";
  int tamSayi = 11;
  double piSayisi = 3.14;
  bool girisYaptimi = true;

  print(selamVer);
  print(tamSayi);
  print(piSayisi);
  print(girisYaptimi);

}