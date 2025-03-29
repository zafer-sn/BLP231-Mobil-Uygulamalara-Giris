import 'package:flutter/material.dart';

class YapilacakGorev extends StatelessWidget {
  String gorevAdi;
  bool gorevTamamlandi;
  Function(bool?)? degisti;

  YapilacakGorev({
    super.key,
    required this.gorevAdi,
    required this.gorevTamamlandi,
    required this.degisti,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Row(
          children: [
            Checkbox(
              value: gorevTamamlandi,
              onChanged: degisti,
              activeColor: Colors.black,
            ),
            Text(
              gorevAdi,
              style: TextStyle(
                decoration:
                    gorevTamamlandi
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
