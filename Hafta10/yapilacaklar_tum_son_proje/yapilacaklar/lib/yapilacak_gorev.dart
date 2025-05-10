import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class YapilacakGorev extends StatelessWidget {
  String gorevAdi;
  bool gorevTamamlandi;
  Function(bool?)? degisti;
  Function(BuildContext)? silmeButonunaTiklandi;

  YapilacakGorev({
    super.key,
    required this.gorevAdi,
    required this.gorevTamamlandi,
    required this.degisti,
    required this.silmeButonunaTiklandi
  });
// Ogrenci ogr1 = new Ogrenci();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12.0),
              icon: Icons.delete,
              onPressed: silmeButonunaTiklandi,)
        ]),
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
      ),
    );
  }
}
