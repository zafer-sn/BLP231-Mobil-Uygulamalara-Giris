import 'package:flutter/material.dart';

void main()
{
  runApp(Uygulama());
}

class Uygulama extends StatefulWidget {
  const Uygulama({super.key});

  @override
  State<Uygulama> createState() => _UygulamaState();
}

class _UygulamaState extends State<Uygulama> {
  //String url = ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Resim Ornek"), centerTitle: true,),
        body: Center(
          child: Column(
            children: [
              // widget istiyorsa Image.asset veya Image.network
              // ImageProvider istiyorsa NetworkImage veya AssetImage
              Container(
                width: 150.0,
                  height: 150.0,
                  child: Image.asset(fit: BoxFit.cover, "assets/images/pmyo1.jpg")),
Image.network("https://avatars.githubusercontent.com/u/162111813?v=4"),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/162111813?v=4"),
            )
            ],
          ),
        ),
      ),
    );
  }
}
