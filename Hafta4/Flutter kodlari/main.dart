import 'package:flutter/material.dart';
// Container'a genişlik ve yükseklik verilmemişse ve içerisinde herhangi bir eleman yoksa parent(ebeveyn) objesi kadar alan kaplar.
// Container'a genişlik ve yükseklik verilmemişse ama içerisinde bir eleman varsa içerisindeki eleman kadar yer kaplar.

// Row -> Satır -> Widgetları yanyana sıralar.
// Column -> Sütun -> Widgetları altalta sıralar.
// Hem Row hem de Column child yerine children özelliği alır.

// Row için ana eksen -> yatay eksendir. ana -> Main
// Row için zıt eksen -> dikey eksendir. zıt -> Cross
// Column için ana eksen -> dikey eksendir.
// Column için zıt eksen -> yatay eksendir.

/*
* MainAxisAlignment.start -> Çocukları ana eksenin başlangıcına hizalar
* MainAxisAlignment.end -> Çocukları ana eksenin sonuna hizalar.
* MainAxisAlignment.center -> Çocukları ana eksen üzerinde ortalar.
* MainAxisAlignment.spaceBetween -> Çocuklar arasında eşit mesafe bırakır, ancak ilk ve son elemanlar ana eksenin sınırlarına yerleştirilir.
* MainAxisAlignment.spaceAround -> Çocuklar arasındaki mesafeler eşit olur, ancak her iki uçta da çocukların etrafında yarım boşluk bırakılır.
* MainAxisAlignment.spaceEvenly -> Çocuklar arasındaki tüm boşluklar eşit olur.
*/

/*
* Alignment.topLeft -> Çocuğu, container veya alanın sol üst köşesine hizalar.
* Alignment.topCenter -> Çocuğu, container veya alanın üst orta kısmına hizalar.
* Alignment.topRight -> Çocuğu, container veya alanın sağ üst köşesine hizalar.
* Alignment.centerLeft -> Çocuğu, container veya alanın sol orta kısmına hizalar.
* Alignment.center -> Çocuğu, container veya alanın tam ortasına hizalar.
* Alignment.centerRight -> Çocuğu, container veya alanın sağ orta kısmına hizalar.
* Alignment.bottomLeft -> Çocuğu, container veya alanın sol alt köşesine hizalar.
* Alignment.bottomCenter -> Çocuğu, container veya alanın alt orta kısmına hizalar.
* Alignment.bottomRight -> Çocuğu, container veya alanın sağ alt köşesine hizalar.
* Alignment ayrıca x ve y koordinatları ile de kullanılabilir. Örneğin:
Alignment(x, y)
Buradaki x ve y değerleri, çocukların konumunu belirler.
x değeri: -1.0 (sol) ile 1.0 (sağ) arasında bir değerdir.
y değeri: -1.0 (üst) ile 1.0 (alt) arasında bir değerdir.
*
*/

void main()
{
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Sağ üstteki kırmızı bannerı kaldırır
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("TEST UYGULAMASI"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 4,
                child: Container(
              height: 250,
              color: Colors.red,
            )),
            Expanded(
              flex: 4,
              child: Container(
                height: 150,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 150,
                color: Colors.orange,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(
              color: Colors.black,
              Icons.add),
          onPressed: () {
          print("Butona Tiklandi");
        },),
      ),
    );
  }
  Container myCont()
  {
    return Container(
      width: 150,
      height: 150,
      color: Colors.red,
      alignment: Alignment.center,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      //alignment: Alignment(-1, 1),
      child: Container(
        // padding: EdgeInsets.all(8.0),
          width: 100,
          height: 100,
          color: Colors.yellow,
          child: Center(child: Text("Ortalanmış"))),
    );
  }
}



