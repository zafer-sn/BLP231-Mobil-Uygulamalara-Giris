import 'package:flutter/material.dart';
// Flexible ile sarmalanmış bir yapı maksimum width değeri kadar genişler.
// Expanded ile sarmalanmış bir yapı ne kadar genişleyebilirse o kadar genişler. widthin bir önemi yoktur
void main()
{
  runApp(Uygulama());
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HAFTA5"),
        ),
        body: Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.red,
                width: 300,
                height: 300,
              ),
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
