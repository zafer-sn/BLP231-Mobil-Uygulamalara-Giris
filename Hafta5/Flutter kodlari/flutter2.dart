import 'package:flutter/material.dart';

// Flexible ile sarmalanmış bir yapı maksimum width değeri kadar genişler.
// Expanded ile sarmalanmış bir yapı ne kadar genişleyebilirse o kadar genişler. widthin bir önemi yoktur
// Eğer bizden widget isteniyorsa Image.network
// Eğer bizden Image Provider isteniyorsa NetworkImage

void main() {
  runApp(Uygulama());
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  Widget _insaEt(String deger, String etiket)
  {
    return Expanded(
      child: Column(
        children: [
          Text(deger, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          Text(etiket, style: TextStyle(fontSize: 14,),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(centerTitle: true, title: Text("Profil Sayfası")),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 12,),
              CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/162111813?v=4"),
              ),
              Text("Zafer SERİN", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text("Bilgisayar Mühendisi", style: TextStyle(fontSize: 18, color: Colors.grey.shade400),),
              SizedBox(height: 12,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      _insaEt("1.5K", "Takipçi"),
                      _insaEt("2.5K", "Takip Edilen"),
                      _insaEt("500", "Gönderi"),]
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Card(
                shape: Border(top: BorderSide.none),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hakkında", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(height: 12,),
                      Text("BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu. BŞEÜ'den mezun oldu.")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
