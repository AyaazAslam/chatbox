import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormWfield extends StatelessWidget {
  final String inputText;
  final IconData? icon;
  TextFormWfield({super.key, required this.inputText, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(label: Text(inputText), prefixIcon: Icon(icon)),
    );
  }
}
