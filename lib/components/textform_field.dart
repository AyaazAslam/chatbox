import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormWidge extends StatelessWidget {
  final String inputText;
  const TextFormWidge({super.key, required this.inputText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(label: Text(inputText)),
    );
  }
}
