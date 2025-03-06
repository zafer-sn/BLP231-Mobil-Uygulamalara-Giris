import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: AnaSayfa(),
    debugShowCheckedModeBanner: false,
  ));
}
class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["ahmet", "mehmet", "ali", "Zafer"];
    return Scaffold(
      appBar: AppBar(title: Text("HAFTA3"),),
      body: Center(
        child: Text
          ("Pazaryeri MYO",
          style: TextStyle(
            fontSize: 48.0,
            color: Color(0xFF17933A),
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0,
            wordSpacing: 10.0,
            height: 20.0,
            decoration: TextDecoration.underline,
            decorationThickness: 5.0,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dotted,
            //backgroundColor: Colors.yellow,
            locale: Locale('tr', "TR"),
            fontStyle: FontStyle.italic,
            textBaseline: TextBaseline.ideographic,
            fontFamily: "Arial",
            background: Paint()..color=Colors.blue..shader=LinearGradient(colors: [Colors.green, Colors.blue]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 50.0)),
            leadingDistribution: TextLeadingDistribution.even,
            ),
        ),
      ),
    );
  }
}
