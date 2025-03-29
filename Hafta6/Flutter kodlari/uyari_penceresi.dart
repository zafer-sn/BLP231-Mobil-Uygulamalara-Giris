import 'package:flutter/material.dart';
import 'package:hafta6todoapp/butonlarim.dart';

class UyariPenceresi extends StatelessWidget {
  TextEditingController? controller;
  VoidCallback kaydet;
  VoidCallback iptalEt;

  UyariPenceresi({
    super.key,
    required this.controller,
    required this.kaydet,
    required this.iptalEt
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      title: Text("Görev Ekle"),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Görev ekle",
                border: OutlineInputBorder()
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Butonum(butonText: "Ekle", butonClick: kaydet),
                SizedBox(width: 12,),
                Butonum(butonText: "İptal", butonClick: iptalEt)
              ],
            )
          ],
        ),
      ),
    );
  }
}
