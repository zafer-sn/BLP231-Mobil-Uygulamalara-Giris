import 'package:flutter/material.dart';

class Butonum extends StatelessWidget {
  String butonText;
  Function()? butonClick;

  Butonum({super.key, required this.butonText, required this.butonClick});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(butonText),
      onPressed: butonClick,
      color: Theme.of(context).primaryColor,
    );
  }
}
